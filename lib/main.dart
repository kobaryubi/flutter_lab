import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
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

  if (F.appFlavor == .local) {
    HttpOverrides.global = DevHttpOverrides();
  }

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  final overrides = F.appFlavor == .production
      ? productionOverrides()
      : <Override>[];

  runApp(
    ProviderScope(
      overrides: overrides,
      child: const FlutterLabApp(),
    ),
  );
}
