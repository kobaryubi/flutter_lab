import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/shared_preferences/provider/shared_preferences_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shared_preferences_view_model.g.dart';

/// View model for shared preferences screen.
@riverpod
class SharedPreferencesViewModel extends _$SharedPreferencesViewModel {
  @override
  SharedPreferencesUiState build() =>
      const SharedPreferencesUiState(latestAgreedDate: null);

  /// Initializes and loads the latest agreed date.
  ///
  /// If no value is stored, saves the current date as the default
  /// and returns it.
  Future<void> load() async {
    final initializeLatestAgreedDateUseCase = ref.read(
      initializeLatestAgreedDateUseCaseProvider,
    );

    state = state.copyWith(
      latestAgreedDate: await AsyncValue.guard(() async {
        final result = await initializeLatestAgreedDateUseCase.call();
        return result.getOrThrow();
      }),
    );
  }

  /// Saves the current datetime as latest agreed date.
  Future<void> save() async {
    final repository = ref.read(agreementRepositoryProvider);
    await repository.saveLatestAgreedDate(date: DateTime.now());
  }
}
