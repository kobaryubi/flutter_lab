import 'package:flutter/material.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/l10n/app_localizations.dart';
import 'package:flutter_lab/presentation/core/widget/global_effects.dart';
import 'package:flutter_lab/presentation/core/widget/global_error_overlay.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:flutter_lab/ui/flutter_lab_app/view_model/flutter_lab_app_view_model.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FlutterLabApp extends ConsumerWidget {
  const FlutterLabApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    ref.listen(flutterLabAppViewModelProvider, (previous, next) {});

    /// Navigates to [LoggedInHomeRoute] whenever the app-level opened
    /// push-message stream emits a new tap event.
    void handleOpenedPushMessage(
      AsyncValue<PushMessage>? previous,
      AsyncValue<PushMessage> next,
    ) {
      if (next is! AsyncData<PushMessage>) return;

      final navigatorContext = rootNavigatorKey.currentContext;

      if (navigatorContext == null) return;

      LoggedInHomeRoute().go(navigatorContext);
    }

    ref.listen(watchOpenedPushMessageUseCaseProvider, handleOpenedPushMessage);

    return Portal(
      child: WidgetsApp.router(
        routerConfig: router,
        color: const Color(0xffffffff),
        title: 'Flutter Lab',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        textStyle: TextStyles.bodyMedium.merge(
          const TextStyle(color: AppColors.black1),
        ),
        builder: (context, child) => GlobalEffects(
          child: GlobalErrorOverlay(
            child: child ?? const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}
