import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lab/data/repositories/auth/auth_repository.dart';
import 'package:flutter_lab/data/repositories/auth/auth_repository_dev.dart';
import 'package:flutter_lab/data/repositories/joke/joke_repository.dart';
import 'package:flutter_lab/data/repositories/joke/joke_repository_remote.dart';
import 'package:flutter_lab/data/repositories/subscription/subscription_repository.dart';
import 'package:flutter_lab/data/repositories/subscription/subscription_repository_local.dart';
import 'package:flutter_lab/data/services/dio/dio_client.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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

@riverpod
JokeRepository jokeRepository(Ref ref) {
  final dioClient = DioClient(dio: Dio());
  return JokeRepositoryRemote(dioClient: dioClient);
}
