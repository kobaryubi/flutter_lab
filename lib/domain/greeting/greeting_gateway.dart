import 'package:result_dart/result_dart.dart';

/// Gateway for loading greeting messages.
abstract class GreetingGateway {
  /// Loads a greeting message asynchronously.
  AsyncResult<String> getGreeting();
}
