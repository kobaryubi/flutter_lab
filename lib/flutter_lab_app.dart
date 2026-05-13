import 'package:flutter/material.dart';
import 'package:flutter_lab/l10n/app_localizations.dart';
import 'package:flutter_lab/presentation/core/widget/global_effects.dart';
import 'package:flutter_lab/presentation/core/widget/global_error_overlay.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:flutter_lab/ui/flutter_lab_app/ui_state/flutter_lab_app_ui_state.dart';
import 'package:flutter_lab/ui/flutter_lab_app/view_model/flutter_lab_app_view_model.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FlutterLabApp extends ConsumerWidget {
  const FlutterLabApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    /// Navigates to [LoggedInHomeRoute] when the app-level view model
    /// records a new push-notification tap.
    void handleFlutterLabAppStateChange(
      FlutterLabAppUiState? previous,
      FlutterLabAppUiState next,
    ) {
      if (next.lastOpenedPushMessage == null) return;

      final navigatorContext = rootNavigatorKey.currentContext;

      if (navigatorContext == null) return;

      LoggedInHomeRoute().go(navigatorContext);
    }

    ref.listen(flutterLabAppViewModelProvider, handleFlutterLabAppStateChange);

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
