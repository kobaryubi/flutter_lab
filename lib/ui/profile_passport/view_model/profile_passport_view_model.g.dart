// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_passport_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the ProfilePassport SDK demo screen.
///
/// Provides a method to start the PPSDK service.

@ProviderFor(ProfilePassportViewModel)
const profilePassportViewModelProvider = ProfilePassportViewModelProvider._();

/// ViewModel for the ProfilePassport SDK demo screen.
///
/// Provides a method to start the PPSDK service.
final class ProfilePassportViewModelProvider
    extends
        $NotifierProvider<ProfilePassportViewModel, ProfilePassportUiState> {
  /// ViewModel for the ProfilePassport SDK demo screen.
  ///
  /// Provides a method to start the PPSDK service.
  const ProfilePassportViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profilePassportViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profilePassportViewModelHash();

  @$internal
  @override
  ProfilePassportViewModel create() => ProfilePassportViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfilePassportUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfilePassportUiState>(value),
    );
  }
}

String _$profilePassportViewModelHash() =>
    r'2f7b999410d93b34e8453133ff9b23c18c612d2b';

/// ViewModel for the ProfilePassport SDK demo screen.
///
/// Provides a method to start the PPSDK service.

abstract class _$ProfilePassportViewModel
    extends $Notifier<ProfilePassportUiState> {
  ProfilePassportUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<ProfilePassportUiState, ProfilePassportUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProfilePassportUiState, ProfilePassportUiState>,
              ProfilePassportUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
