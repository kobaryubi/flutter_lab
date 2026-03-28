/// User property names for analytics.
///
/// Each name must be registered as a custom definition
/// in the Firebase Console before use.
enum UserPropertyName {
  /// The user's preferred language.
  preferredLanguage('preferred_language')
  ;

  const UserPropertyName(this.value);

  /// The raw string value sent to the analytics SDK.
  final String value;
}
