import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/profile_passport/ui_state/profile_passport_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_passport_view_model.g.dart';

/// ViewModel for the ProfilePassport SDK demo screen.
///
/// Provides a method to start the PPSDK service.
@riverpod
class ProfilePassportViewModel extends _$ProfilePassportViewModel {
  @override
  ProfilePassportUiState build() => const ProfilePassportUiState();

  /// Starts the PPSDK service via the use case.
  Future<void> startService() async {
    final useCase = ref.read(startProfilePassportServiceUseCaseProvider);

    final startService = await AsyncValue.guard(
      () async => (await useCase.call()).getOrThrow(),
    );

    state = state.copyWith(startService: startService);
  }
}
