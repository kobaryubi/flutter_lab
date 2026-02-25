import 'package:flutter_lab/data/gateway/pigeon/pigeon_api.g.dart';
import 'package:flutter_lab/domain/pigeon_example/pigeon_example_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// [PigeonExampleGateway] implementation backed by Pigeon-generated
/// [ExampleHostApi].
///
/// Calls the native host to demonstrate various Pigeon API patterns.
class PigeonExampleGatewayImpl implements PigeonExampleGateway {
  final ExampleHostApi _exampleHostApi = ExampleHostApi();

  @override
  AsyncResult<String> getHostLanguage() async {
    try {
      final language = await _exampleHostApi.getHostLanguage();
      return Success(language);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<int> add({required int a, required int b}) async {
    try {
      final result = await _exampleHostApi.add(a, b);
      return Success(result);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<bool> sendMessage({required MessageData message}) async {
    try {
      final result = await _exampleHostApi.sendMessage(message);
      return Success(result);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }
}
