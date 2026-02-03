import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/config/dependencies.dart';
import 'package:flutter_lab/domain/location/platform_location_repository.dart';
import 'package:flutter_lab/firebase_options.dart';
import 'package:flutter_lab/flavors.dart';
import 'package:flutter_lab/flutter_lab_app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Logger.root.level = Level.ALL;

  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    ProviderScope(
      overrides: [
        locationRepositoryProvider.overrideWithValue(
          PlatformLocationRepository(),
        ),
      ],
      child: MultiProvider(
        providers: providersLocal,
        child: const FlutterLabApp(),
      ),
    ),
  );
}
