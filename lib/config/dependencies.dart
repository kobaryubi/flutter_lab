import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lab/data/repositories/activity/activity_repository.dart';
import 'package:flutter_lab/data/repositories/activity/activity_repository_local.dart';
import 'package:flutter_lab/data/repositories/activity/activity_repository_remote.dart';
import 'package:flutter_lab/data/repositories/auth/auth_repository.dart';
import 'package:flutter_lab/data/repositories/auth/auth_repository_dev.dart';
import 'package:flutter_lab/data/repositories/booking/booking_repository.dart';
import 'package:flutter_lab/data/repositories/booking/booking_repository_local.dart';
import 'package:flutter_lab/data/repositories/booking/booking_repository_remote.dart';
import 'package:flutter_lab/data/repositories/continent/continent_repository.dart';
import 'package:flutter_lab/data/repositories/continent/continent_repository_local.dart';
import 'package:flutter_lab/data/repositories/continent/continent_repository_remote.dart';
import 'package:flutter_lab/data/repositories/destination/destination_repository.dart';
import 'package:flutter_lab/data/repositories/destination/destination_repository_local.dart';
import 'package:flutter_lab/data/repositories/destination/destination_repository_remote.dart';
import 'package:flutter_lab/data/repositories/itinerary_config/itinerary_config_repository.dart';
import 'package:flutter_lab/data/repositories/itinerary_config/itinerary_config_repository_memory.dart';
import 'package:flutter_lab/data/repositories/joke/joke_repository.dart';
import 'package:flutter_lab/data/repositories/joke/joke_repository_remote.dart';
import 'package:flutter_lab/data/repositories/subscription/subscription_repository.dart';
import 'package:flutter_lab/data/repositories/subscription/subscription_repository_local.dart';
import 'package:flutter_lab/data/repositories/user/user_repository.dart';
import 'package:flutter_lab/data/repositories/user/user_repository_local.dart';
import 'package:flutter_lab/data/repositories/user/user_repository_remote.dart';
import 'package:flutter_lab/data/services/api/api_client.dart';
import 'package:flutter_lab/data/services/dio/dio_client.dart';
import 'package:flutter_lab/data/services/local/local_data_service.dart';
import 'package:flutter_lab/domain/use_cases/booking/booking_share_use_case.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

List<SingleChildWidget> _sharedProviders = [
  Provider<SubscriptionRepository>(
    create: (BuildContext context) => SubscriptionRepositoryLocal(),
  ),
  Provider<ItineraryConfigRepository>(
    create: (_) => ItineraryConfigRepositoryMemory(),
  ),
  //   Provider(
  //     lazy: true,
  //     create:
  //         (context) => BookingCreateUseCase(
  //           destinationRepository: context.read(),
  //           activityRepository: context.read(),
  //           bookingRepository: context.read(),
  //         ),
  //   ),
  Provider(lazy: true, create: (_) => BookingShareUseCase.withSharePlus()),
];

final List<SingleChildWidget> providersRemote = [
  //     Provider(create: (context) => AuthApiClient()),
  Provider(create: (context) => ApiClient()),
  //     Provider(create: (context) => SharedPreferencesService()),
  //     ChangeNotifierProvider(
  //       create:
  //           (context) =>
  //               AuthRepositoryRemote(
  //                     authApiClient: context.read(),
  //                     apiClient: context.read(),
  //                     sharedPreferencesService: context.read(),
  //                   )
  //                   as AuthRepository,
  //     ),
  Provider<DestinationRepository>(
    create: (context) => DestinationRepositoryRemote(apiClient: context.read()),
  ),
  Provider<ContinentRepository>(
    create: (context) => ContinentRepositoryRemote(apiClient: context.read()),
  ),
  Provider<ActivityRepository>(
    create: (context) => ActivityRepositoryRemote(apiClient: context.read()),
  ),
  Provider<BookingRepository>(
    create: (context) => BookingRepositoryRemote(apiClient: context.read()),
  ),
  Provider<UserRepository>(
    create: (context) => UserRepositoryRemote(apiClient: context.read()),
  ),
  ..._sharedProviders,
];

final List<SingleChildWidget> providersLocal = [
  ChangeNotifierProvider<AuthRepository>(create: (_) => AuthRepositoryDev()),
  Provider(create: (_) => LocalDataService()),
  Provider<DestinationRepository>(
    create: (context) =>
        DestinationRepositoryLocal(localDataService: context.read()),
  ),
  Provider<ContinentRepository>(
    create: (context) =>
        ContinentRepositoryLocal(localDataService: context.read()),
  ),
  Provider<ActivityRepository>(
    create: (context) =>
        ActivityRepositoryLocal(localDataService: context.read()),
  ),
  Provider<BookingRepository>(
    create: (context) =>
        BookingRepositoryLocal(localDataService: context.read()),
  ),
  Provider<UserRepository>(
    create: (context) => UserRepositoryLocal(localDataService: context.read()),
  ),
  ..._sharedProviders,
];

@riverpod
JokeRepository jokeRepository(Ref ref) {
  final dioClient = DioClient(dio: Dio());
  return JokeRepositoryRemote(dioClient: dioClient);
}
