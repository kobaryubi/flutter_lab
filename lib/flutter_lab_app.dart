import 'package:flutter/material.dart';
import 'package:flutter_lab/l10n/app_localizations.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart';

class FlutterLabApp extends ConsumerWidget {
  const FlutterLabApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WidgetsApp.router(
      routerConfig: router(context.read()),
      color: const Color(0xffffffff),
      title: 'Flutter Lab',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      textStyle: TextStyles.bodyMedium.merge(
        TextStyle(color: AppColors.black1),
      ),
    );
  }
}
