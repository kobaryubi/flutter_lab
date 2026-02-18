/// Builds a formatted greeting message using a resolved greeting string.
///
/// This use case receives a plain [String] greeting (not an async value),
/// demonstrating that async resolution happens at the provider level.
class GetFormattedGreetingUseCase {
  GetFormattedGreetingUseCase({required String greeting})
    : _greeting = greeting;

  final String _greeting;

  /// Returns a formatted greeting for the given [userName].
  String call({required String userName}) => '$_greeting, $userName!';
}
