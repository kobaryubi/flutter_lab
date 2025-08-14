import 'package:flutter_lab/domain/models/itinerary_config/itinerary_config.dart';
import 'package:flutter_lab/utils/result.dart';

abstract class ItineraryConfigRepository {
  Future<Result<ItineraryConfig>> getItineraryConfig();
  Future<Result<bool>> setItineraryConfig(ItineraryConfig itineraryConfig);
}
