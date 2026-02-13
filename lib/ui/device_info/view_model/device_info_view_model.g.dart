// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the device info screen.

@ProviderFor(DeviceInfoViewModel)
const deviceInfoViewModelProvider = DeviceInfoViewModelProvider._();

/// ViewModel for the device info screen.
final class DeviceInfoViewModelProvider
    extends $NotifierProvider<DeviceInfoViewModel, DeviceInfoUiState> {
  /// ViewModel for the device info screen.
  const DeviceInfoViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deviceInfoViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deviceInfoViewModelHash();

  @$internal
  @override
  DeviceInfoViewModel create() => DeviceInfoViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeviceInfoUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeviceInfoUiState>(value),
    );
  }
}

String _$deviceInfoViewModelHash() =>
    r'ad9625d0d7197a9637bcfe3360ce457e429fafb9';

/// ViewModel for the device info screen.

abstract class _$DeviceInfoViewModel extends $Notifier<DeviceInfoUiState> {
  DeviceInfoUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DeviceInfoUiState, DeviceInfoUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DeviceInfoUiState, DeviceInfoUiState>,
              DeviceInfoUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
