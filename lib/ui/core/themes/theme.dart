import 'dart:ui';

abstract final class TextStyles {
  static final headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w500,
  );
  static final headlineSmall = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static final titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static final bodyLarge = TextStyle(fontSize: 18, fontWeight: FontWeight.w400);
  static final bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static final bodySmall = TextStyle(fontSize: 14, fontWeight: FontWeight.w400);
  static final labelSmall = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );
  static final labelLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static final hintStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
  );
}
