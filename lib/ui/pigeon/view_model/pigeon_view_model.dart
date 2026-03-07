import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/data/gateway/pigeon_example/message_flutter_api_handler.dart';
import 'package:flutter_lab/gen/pigeon/pigeon.g.dart';
import 'package:flutter_lab/ui/pigeon/ui_state/pigeon_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pigeon_view_model.g.dart';

/// ViewModel for the Pigeon demo screen.
///
/// Demonstrates calling both HostApi and FlutterApi via Pigeon.
@riverpod
class PigeonViewModel extends _$PigeonViewModel {
  @override
  PigeonUiState build() => const PigeonUiState();

  /// Calls [GreetingApi.greet] with "World" via Pigeon.
  Future<void> greet() async {
    final greetingApi = ref.read(greetingApiProvider);

    final greeting = await AsyncValue.guard<String>(
      () => greetingApi.greet('World'),
    );

    state = state.copyWith(greeting: greeting);
  }

  /// Calls [ExampleHostApi.getHostLanguage] via gateway.
  Future<void> getHostLanguage() async {
    final gateway = ref.read(pigeonGatewayProvider);

    final hostLanguage = await AsyncValue.guard(
      () async {
        final result = await gateway.getHostLanguage();
        return result.getOrThrow();
      },
    );

    state = state.copyWith(hostLanguage: hostLanguage);
  }

  /// Calls [ExampleHostApi.add] with sample values (3 + 5) via gateway.
  Future<void> add() async {
    final gateway = ref.read(pigeonGatewayProvider);

    final addResult = await AsyncValue.guard(
      () async {
        final result = await gateway.add(a: 3, b: 5);
        return result.getOrThrow();
      },
    );

    state = state.copyWith(addResult: addResult);
  }

  /// Calls [ExampleHostApi.sendMessage] with sample [MessageData] via gateway.
  Future<void> sendMessage() async {
    final gateway = ref.read(pigeonGatewayProvider);

    final sendMessageResult = await AsyncValue.guard(
      () async {
        final message = MessageData(
          code: Code.two,
          data: {'key': 'value'},
        );
        final result = await gateway.sendMessage(message: message);
        return result.getOrThrow();
      },
    );

    state = state.copyWith(sendMessageResult: sendMessageResult);
  }

  /// Triggers native to call Dart's [MessageFlutterApi.flutterMethod] via
  /// MethodChannel.
  ///
  /// The native side receives the message, calls back to Dart via Pigeon
  /// FlutterApi, and returns the echoed result.
  Future<void> callFlutterMethod() async {
    final gateway = ref.read(pigeonGatewayProvider);

    final callFlutterMethodResult = await AsyncValue.guard(
      () async {
        final result = await gateway.callFlutterMethod(
          message: 'Hello from Dart',
        );

        return result.getOrThrow();
      },
    );

    state = state.copyWith(callFlutterMethodResult: callFlutterMethodResult);
  }

  /// Sets up [MessageFlutterApi] handler to receive calls from native.
  ///
  /// When native invokes [flutterMethod], the result is shown in the UI.
  void setUpFlutterMethod() {
    final handler = MessageFlutterApiHandler(
      onCalled: (result) {
        state = state.copyWith(flutterMethodResult: AsyncData(result));
      },
    );
    MessageFlutterApi.setUp(handler);
  }
}
