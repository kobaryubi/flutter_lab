import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lab/application/di/production_overrides.dart';
import 'package:flutter_lab/data/http/dev_http_overrides.dart';
import 'package:flutter_lab/firebase_options_local.dart' as local;
import 'package:flutter_lab/firebase_options_production.dart' as production;
import 'package:flutter_lab/flavors.dart';
import 'package:flutter_lab/flutter_lab_app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Logger.root.level = Level.ALL;

  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );

  final firebaseOptions = F.appFlavor == .local
      ? local.DefaultFirebaseOptions.currentPlatform
      : production.DefaultFirebaseOptions.currentPlatform;

  await Firebase.initializeApp(options: firebaseOptions);

  /// Catches Flutter framework errors, presents them on screen,
  /// and reports to Crashlytics.
  /// In release mode, terminates the app to avoid showing a broken screen.
  FlutterError.onError = (details) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(details);

    if (kReleaseMode) {
      exit(1);
    }
  };

  /// Catches asynchronous errors not handled by the Flutter framework
  /// and reports them to Crashlytics.
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);

    return true;
  };

  if (F.appFlavor == .local) {
    HttpOverrides.global = DevHttpOverrides();
  }

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  final overrides = F.appFlavor == .production
      ? productionOverrides
      : <Override>[];

  runApp(
    ProviderScope(
      overrides: overrides,
      child: const FlutterLabApp(),
    ),
  );
}
