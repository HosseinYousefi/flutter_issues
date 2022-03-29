import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_form_state.freezed.dart';

@freezed
class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    @Default('') String token,

    /// Whether or not the token is entered correctly.
    ///
    /// Since we have only a single simple field a boolean suffices.
    @Default(false) bool hasError,
  }) = _AuthFormState;
}
