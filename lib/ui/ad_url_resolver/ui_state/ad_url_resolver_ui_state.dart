import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'ad_url_resolver_ui_state.freezed.dart';

/// UI state for the ad URL resolver screen.
@freezed
abstract class AdUrlResolverUiState with _$AdUrlResolverUiState {
  const factory AdUrlResolverUiState({
    AsyncValue<Uri>? resolvedUrl,
  }) = _AdUrlResolverUiState;
}
