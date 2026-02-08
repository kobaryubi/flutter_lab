import 'package:flutter_lab/ui/effect_vs_listen/ui_state/effect_vs_listen_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'effect_vs_listen_view_model.g.dart';

/// ViewModel for the useEffect vs ref.listen demonstration screen.
@riverpod
class EffectVsListenViewModel extends _$EffectVsListenViewModel {
  @override
  EffectVsListenUiState build() => const EffectVsListenUiState();

  /// Increments the provider count.
  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}
