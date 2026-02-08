import 'package:freezed_annotation/freezed_annotation.dart';

part 'flutter_lab_app_ui_state.freezed.dart';

/// UI state for the FlutterLabApp.
@freezed
abstract class FlutterLabAppUiState with _$FlutterLabAppUiState {
  const factory FlutterLabAppUiState() = _FlutterLabAppUiState;
}
