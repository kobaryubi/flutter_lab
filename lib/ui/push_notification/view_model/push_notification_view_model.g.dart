// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_notification_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that manages push notification setup.

@ProviderFor(PushNotificationViewModel)
const pushNotificationViewModelProvider = PushNotificationViewModelProvider._();

/// ViewModel that manages push notification setup.
final class PushNotificationViewModelProvider
    extends
        $NotifierProvider<PushNotificationViewModel, PushNotificationUiState> {
  /// ViewModel that manages push notification setup.
  const PushNotificationViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pushNotificationViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pushNotificationViewModelHash();

  @$internal
  @override
  PushNotificationViewModel create() => PushNotificationViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PushNotificationUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PushNotificationUiState>(value),
    );
  }
}

String _$pushNotificationViewModelHash() =>
    r'5fb5a6665e2a2b46bbd12eeed15bea9d6b30ba22';

/// ViewModel that manages push notification setup.

abstract class _$PushNotificationViewModel
    extends $Notifier<PushNotificationUiState> {
  PushNotificationUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<PushNotificationUiState, PushNotificationUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PushNotificationUiState, PushNotificationUiState>,
              PushNotificationUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
