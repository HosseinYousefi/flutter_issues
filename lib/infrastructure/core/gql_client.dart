import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

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

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    // TODO: add auth token to request
    return _client.send(request);
  }
}

final authHttpClientProvider = Provider((_) => AuthHttpClient());

/// Provider for [Ferry].
///
/// Depends on:
/// * storeProvider
/// * gitHubGqlLinkProvider
/// * authHttpClientProvider
final gqlClient = Provider((ref) {
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
