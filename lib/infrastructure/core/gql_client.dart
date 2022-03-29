import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutterissues/infrastructure/auth/auth_service.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../domain/core/entities/repo_failure.dart';

final gitHubGqlEndpointProvider =
    Provider((_) => 'https://api.github.com/graphql');

/// Provider for the [HiveStore].
///
/// We are using this provider when launching the app (Loading Screen)
/// so we no longer need to await to get its value.
final storeProvider = FutureProvider((_) async {
  await Hive.initFlutter();
  final box = await Hive.openBox('cache');
  return HiveStore(box);
});

/// An HTTP client that adds an Authorization header to the request.
class AuthHttpClient extends http.BaseClient {
  final http.Client _client = http.Client();
  final Reader reader;

  AuthHttpClient(this.reader);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final token = reader(tokenProvider).asData?.value;
    if (token != null) {
      request.headers['Authorization'] = 'bearer $token';
    }
    return _client.send(request);
  }
}

final authHttpClientProvider = Provider((ref) => AuthHttpClient(ref.read));

/// Provider for [TypedLink]. Used for GraphQL requests.
///
/// Depends on:
/// * storeProvider
/// * gitHubGqlLinkProvider
/// * authHttpClientProvider
final gqlClientProvider = Provider<TypedLink>((ref) {
  final store = ref.watch(storeProvider).asData!.value;
  final endpoint = ref.watch(gitHubGqlEndpointProvider);
  final httpClient = ref.watch(authHttpClientProvider);
  final link = HttpLink(endpoint, httpClient: httpClient);
  final cache = Cache(store: store);
  return Client(
    link: link,
    cache: cache,
  );
});

extension LinkExceptionX on LinkException {
  RepoFailure toDomain() {
    if (this is ServerException) {
      final message =
          (this as ServerException).parsedResponse?.response['message'];
      return RepoFailure.serverException(message: message ?? 'Server Error');
    }
    return const RepoFailure.general();
  }
}
