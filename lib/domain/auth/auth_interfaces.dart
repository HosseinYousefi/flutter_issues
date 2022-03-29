/// The service used to store and retrieve the GitHub token.
///
/// For now it requires the user to create the token, however this can also
/// be done using "Login with GitHub" feature later on.
abstract class IAuthService {
  /// Stores the GitHub token.
  void storeToken(String token);

  /// Erases the GitHub token.
  void eraseToken();

  /// The current stored GitHub token.
  String? get token;

  /// The changes in token.
  Stream<String?> get onTokenChanged;
}
