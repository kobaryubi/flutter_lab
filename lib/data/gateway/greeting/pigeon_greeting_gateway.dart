import 'package:flutter_lab/data/gateway/pigeon/pigeon_api.g.dart';
import 'package:flutter_lab/domain/greeting/greeting_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// [GreetingGateway] implementation backed by Pigeon-generated [GreetingApi].
///
/// Calls the native host to get a greeting message.
class PigeonGreetingGateway implements GreetingGateway {
  PigeonGreetingGateway({required GreetingApi greetingApi})
    : _greetingApi = greetingApi;

  final GreetingApi _greetingApi;

  @override
  AsyncResult<String> getGreeting() async {
    try {
      final greeting = await _greetingApi.greet('World');
      return Success(greeting);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }
}
