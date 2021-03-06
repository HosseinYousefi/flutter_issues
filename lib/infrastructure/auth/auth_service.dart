import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/auth/auth_interfaces.dart';
import '../core/gql_client.dart';

final authServiceProvider = Provider<IAuthService>((ref) {
  final store = ref.watch(storeProvider).asData!.value;
  return AuthService(store);
});

final tokenProvider = StreamProvider((ref) {
  final authService = ref.watch(authServiceProvider);
  return authService.onTokenChanged;
});

class AuthService implements IAuthService {
  final Store _store;

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
  Stream<String?> get onTokenChanged =>
      _store.watch('token').map((m) => m?['token'] as String?);
}
