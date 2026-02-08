import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'local_paths_ui_state.freezed.dart';

/// Entry representing a labeled directory path.
class PathEntry {
  const PathEntry({required this.label, required this.path});

  final String label;
  final String path;
}

/// UI state for the LocalPathsScreen.
@freezed
abstract class LocalPathsUiState with _$LocalPathsUiState {
  const factory LocalPathsUiState({
    AsyncValue<List<PathEntry>>? paths,
  }) = _LocalPathsUiState;
}
