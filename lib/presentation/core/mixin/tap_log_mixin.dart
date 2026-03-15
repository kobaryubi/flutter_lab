import 'package:flutter_lab/application/di/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Mixin that provides tap event logging.
///
/// Requires [ref] to be available (satisfied by Riverpod Notifiers).
mixin TapLogMixin {
  /// Ref for reading providers.
  Ref get ref;

  /// Logs a tap event for the given [target].
  void logTap({required String target}) {
    ref.read(logTapEventUseCaseProvider).call(target: target);
  }
}
