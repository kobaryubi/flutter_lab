import 'dart:async';

import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/location/location.dart';
import 'package:flutter_lab/ui/method_channel/ui_state/method_channel_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'method_channel_view_model.g.dart';

/// ViewModel for the method channel screen.
@riverpod
class MethodChannelViewModel extends _$MethodChannelViewModel {
  @override
  MethodChannelUiState build() {
    _subscribeToNativeButtonTaps();
    ref.onDispose(() {
      _watchSubscription?.cancel();
      _buttonTapSubscription?.cancel();
    });
    return const MethodChannelUiState(
      location: AsyncLoading(),
      batteryLevel: AsyncLoading(),
    );
  }

  StreamSubscription<Location>? _watchSubscription;
  StreamSubscription<void>? _buttonTapSubscription;

  /// Subscribes to native button tap events.
  void _subscribeToNativeButtonTaps() {
    final watchNativeButtonTapUseCase = ref.read(
      watchNativeButtonTapUseCaseProvider,
    );

    _buttonTapSubscription = watchNativeButtonTapUseCase.call().listen(
      _handleButtonTap,
    );
  }

  /// Handles a native button tap event by incrementing the count.
  void _handleButtonTap(void _) {
    state = state.copyWith(
      buttonTapCount: state.buttonTapCount + 1,
    );
  }

  /// Fetches the current location via platform method channel.
  Future<void> getLocation() async {
    final getLocationUseCase = ref.read(getLocationUseCaseProvider);

    final location = await AsyncValue.guard(() async {
      final result = await getLocationUseCase.call();
      return result.getOrThrow();
    });

    state = state.copyWith(location: location);
  }

  /// Fetches the current battery level via platform method channel.
  Future<void> getBatteryLevel() async {
    final getBatteryLevelUseCase = ref.read(getBatteryLevelUseCaseProvider);

    final batteryLevel = await AsyncValue.guard(() async {
      final result = await getBatteryLevelUseCase.call();
      return result.getOrThrow();
    });

    state = state.copyWith(batteryLevel: batteryLevel);
  }

  /// Starts watching for continuous location updates via EventChannel.
  void watchLocation() {
    if (_watchSubscription != null) return;

    final watchLocationUseCase = ref.read(watchLocationUseCaseProvider);

    state = state.copyWith(
      watchedLocation: const AsyncValue.loading(),
    );

    _watchSubscription = watchLocationUseCase.call().listen(
      _handleLocationUpdate,
      onError: _handleLocationError,
    );
  }

  /// Handles a new location from the watch stream.
  void _handleLocationUpdate(Location location) {
    state = state.copyWith(
      watchedLocation: AsyncValue.data(location),
    );
  }

  /// Handles an error from the watch stream.
  void _handleLocationError(
    Object error,
    StackTrace stackTrace,
  ) {
    state = state.copyWith(
      watchedLocation: AsyncValue.error(error, stackTrace),
    );
  }
}
