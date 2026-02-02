import 'package:flutter_lab/domain/entity/navigation/url_navigation_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'url_navigation_ui_state.freezed.dart';

/// UI state for the URL navigation screen.
@freezed
abstract class UrlNavigationUiState with _$UrlNavigationUiState {
  const factory UrlNavigationUiState({
    required AsyncValue<UrlNavigationList> urlNavigationList,
  }) = _UrlNavigationUiState;
}
