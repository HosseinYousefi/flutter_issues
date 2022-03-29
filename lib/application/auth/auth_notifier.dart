import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../infrastructure/auth/auth_service.dart';
import 'auth_state.dart';

final authStateProvider = Provider<AuthState>((ref) {
  final token = ref.watch(tokenProvider).asData!.value;
  final authState = token == null
      ? const AuthState.unauthenticated()
      : AuthState.authenticated(token: token);
  return authState;
});
