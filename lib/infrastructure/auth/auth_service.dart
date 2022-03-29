import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutterissues/infrastructure/core/gql_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/auth/auth_interfaces.dart';

final authServiceProvider = Provider<IAuthService>((ref) {
  final store = ref.watch(storeProvider).asData!.value;
  return AuthService(store);
});

final tokenProvider = StreamProvider((ref) {
  final authService = ref.watch(authServiceProvider);
  return authService.onTokenChange;
});

class AuthService implements IAuthService {
  final HiveStore _store;

  const AuthService(this._store);

  @override
  void storeToken(String token) {
    _store.put('token', {'token': token});
  }

  @override
  void eraseToken() {
    _store.delete('token');
  }

  @override
  String? get token => _store.get('token')?['token'];

  @override
  Stream<String?> get onTokenChange =>
      _store.watch('token').map((m) => m?['token'] as String?);
}
