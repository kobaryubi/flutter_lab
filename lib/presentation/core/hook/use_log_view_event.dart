import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A hook that logs a screen view analytics event when the widget is first built.
///
/// Call this at the top of a [HookConsumerWidget.build]
/// method to automatically track screen views.
void useLogViewEvent({
  required WidgetRef ref,
  required String screenName,
}) {
  useEffect(
    () {
      ref.read(logViewEventUseCaseProvider).call(screenName: screenName);

      return null;
    },
    [screenName],
  );
}
