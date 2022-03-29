import 'dart:ui';

abstract class InfraUtils {
  /// Convert a hex string to [Color].
  ///
  /// Useful for issue label colors.
  static Color stringToColor(String colorStr) {
    return Color(
      0xFF000000 +
          int.parse(
            colorStr,
            radix: 16,
          ),
    );
  }
}
