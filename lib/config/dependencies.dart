import 'package:flutter_lab/data/repositories/itinerary_config/itinerary_config_repository.dart';
import 'package:flutter_lab/data/repositories/itinerary_config/itinerary_config_repository_memory.dart';
import 'package:flutter_lab/data/repositories/user/user_repository.dart';
import 'package:flutter_lab/data/repositories/user/user_repository_local.dart';
import 'package:flutter_lab/data/services/local/local_data_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final List<SingleChildWidget> providersLocal = [
  Provider(create: (_) => LocalDataService()),
  Provider<ItineraryConfigRepository>(
    create: (_) => ItineraryConfigRepositoryMemory(),
  ),
  Provider<UserRepository>(
    create: (context) => UserRepositoryLocal(localDataService: context.read()),
  ),
];
