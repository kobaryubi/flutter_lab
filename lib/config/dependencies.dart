import 'package:flutter/widgets.dart';
import 'package:flutter_lab/data/repositories/auth/auth_repository.dart';
import 'package:flutter_lab/data/repositories/auth/auth_repository_dev.dart';
import 'package:flutter_lab/data/repositories/subscription/subscription_repository.dart';
import 'package:flutter_lab/data/repositories/subscription/subscription_repository_local.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> _sharedProviders = [
  Provider<SubscriptionRepository>(
    create: (BuildContext context) => SubscriptionRepositoryLocal(),
  ),
];

final List<SingleChildWidget> providersRemote = [
  ..._sharedProviders,
];

final List<SingleChildWidget> providersLocal = [
  ChangeNotifierProvider<AuthRepository>(create: (_) => AuthRepositoryDev()),
  ..._sharedProviders,
];
