import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../infrastructure/auth/auth_service.dart';
import 'auth_state.dart';

final authStateProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final tokenAsync = ref.watch(tokenProvider);
  final authState = tokenAsync.when(
    data: (token) {
      return token == null
          ? const AuthState.unauthenticated()
          : AuthState.authenticated(token: token);
    },
    error: (_, __) => const AuthState.unauthenticated(),
    loading: () => const AuthState.loading(),
  );
  return AuthNotifier(authState);
});

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(
    AuthState state,
  ) : super(state);
}
