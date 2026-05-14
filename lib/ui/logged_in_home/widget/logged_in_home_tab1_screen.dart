import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Tab 1 of the logged-in home shell. Consumes any pending push-notification
/// target screen from in-memory storage on each navigation entry and
/// forwards via `context.push`.
///
/// The optional [nonce] is wired only as a useEffect dependency. Since
/// the shell preserves this element across branch swaps and same-route
/// `go` calls, the element does not remount; a fresh nonce on each
/// navigation is what makes the effect re-fire.
class LoggedInHomeTab1Screen extends HookConsumerWidget {
  const LoggedInHomeTab1Screen({
    this.nonce,
    super.key,
  });

  final String? nonce;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logger = ref.read(loggerGatewayProvider);

    useEffect(() {
      logger.debug('LoggedInHomeTab1Screen: useEffect fired (nonce=$nonce)');

      final targetScreen = ref
          .read(consumePendingTargetScreenUseCaseProvider)
          .call();

      logger.debug(
        'LoggedInHomeTab1Screen: targetScreen = ${targetScreen ?? "none"}',
      );

      if (targetScreen == null) return null;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.push<void>(targetScreen);
      });

      return null;
    }, [nonce]);

    return Center(child: Text('Tab1 — nonce: ${nonce ?? "none"}'));
  }
}
