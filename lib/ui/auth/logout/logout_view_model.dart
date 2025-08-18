import 'package:flutter_lab/data/repositories/auth/auth_repository.dart';
import 'package:flutter_lab/data/repositories/itinerary_config/itinerary_config_repository.dart';
import 'package:flutter_lab/domain/models/itinerary_config/itinerary_config.dart';
import 'package:flutter_lab/utils/command.dart';
import 'package:flutter_lab/utils/result.dart';

class LogoutViewModel {
  LogoutViewModel({
    required AuthRepository authRepository,
    required ItineraryConfigRepository itineraryConfigRepository,
  }) : _authLogoutRepository = authRepository,
       _itineraryConfigRepository = itineraryConfigRepository {
    logout = Command0(_logout);
  }

  final AuthRepository _authLogoutRepository;
  final ItineraryConfigRepository _itineraryConfigRepository;
  late Command0 logout;

  Future<Result> _logout() async {
    final result = await _authLogoutRepository.logout();
    switch (result) {
      case Ok<void>():
        return _itineraryConfigRepository.setItineraryConfig(
          const ItineraryConfig(),
        );
      case Error<void>():
        return result;
    }
  }
}
