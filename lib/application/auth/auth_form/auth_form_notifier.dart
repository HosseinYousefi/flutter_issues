import 'package:flutterissues/domain/auth/auth_interfaces.dart';
import 'package:flutterissues/infrastructure/auth/auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'auth_form_state.dart';

final authFormStateProvider =
    StateNotifierProvider<AuthFormNotifier, AuthFormState>((ref) {
  final authService = ref.watch(authServiceProvider);
  return AuthFormNotifier(authService);
});

class AuthFormNotifier extends StateNotifier<AuthFormState> {
  final IAuthService _authService;

  AuthFormNotifier(this._authService) : super(const AuthFormState());

  void tokenChanged(String token) {
    // Performing a simple check based on the format specified here:
    // https://github.blog/changelog/2021-03-31-authentication-token-format-updates-are-generally-available/
    final regExp = RegExp(r'^gh[pousr]_[A-Za-z0-9_]{30,255}$');
    final hasError = !regExp.hasMatch(token);

    state = state.copyWith(
      token: token,
      hasError: hasError,
    );
  }

  void authenticated() {
    if (!state.hasError) {
      _authService.storeToken(state.token);
    }
  }

  void loggedOut() {
    _authService.eraseToken();
  }
}
