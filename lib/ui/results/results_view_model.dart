import 'package:flutter/widgets.dart';
import 'package:flutter_lab/data/repositories/destination/destination_repository.dart';
import 'package:flutter_lab/data/repositories/itinerary_config/itinerary_config_repository.dart';
import 'package:flutter_lab/domain/models/destination/destination.dart';
import 'package:flutter_lab/domain/models/itinerary_config/itinerary_config.dart';
import 'package:flutter_lab/utils/command.dart';
import 'package:flutter_lab/utils/result.dart';
import 'package:logging/logging.dart';

class ResultsViewModel extends ChangeNotifier {
  ResultsViewModel({
    required DestinationRepository destinationRepository,
    required ItineraryConfigRepository itineraryConfigRepository,
  }) : _destinationRepository = destinationRepository,
       _itineraryConfigRepository = itineraryConfigRepository {
    updateItineraryConfig = Command1<void, String>(_updateItineraryConfig);
    search = Command0(_search)..execute();
  }

  final _log = Logger('ResultsViewModel');
  final DestinationRepository _destinationRepository;
  final ItineraryConfigRepository _itineraryConfigRepository;

  List<Destination> _destinations = [];
  List<Destination> get destinations => _destinations;

  ItineraryConfig? _itineraryConfig;
  ItineraryConfig get config => _itineraryConfig ?? const ItineraryConfig();

  late final Command0 search;
  late final Command1<void, String> updateItineraryConfig;

  Future<Result<void>> _search() async {
    final resultConfig = await _itineraryConfigRepository.getItineraryConfig();
    switch (resultConfig) {
      case Error<ItineraryConfig>():
        _log.warning(
          'Failed to load stored ItineraryConfig',
          resultConfig.error,
        );
        return resultConfig;
      case Ok<ItineraryConfig>():
    }
    _itineraryConfig = resultConfig.value;
    notifyListeners();

    final result = await _destinationRepository.getDestinations();
    switch (result) {
      case Ok():
        {
          _destinations = result.value
              .where(
                (destination) =>
                    destination.continent == _itineraryConfig!.continent,
              )
              .toList();
          _log.fine('Destinations (${_destinations.length}) loaded');
        }
      case Error():
        {
          _log.warning('Failed to load destinations', result.error);
        }
    }

    notifyListeners();
    return result;
  }

  Future<Result<void>> _updateItineraryConfig(String destinationRef) async {
    assert(destinationRef.isNotEmpty, "destinationRef should not be empty");

    final resultConfig = await _itineraryConfigRepository.getItineraryConfig();
    switch (resultConfig) {
      case Error<ItineraryConfig>():
        _log.warning(
          'Failed to load stored ItineraryConfig',
          resultConfig.error,
        );
        return resultConfig;
      case Ok<ItineraryConfig>():
    }

    final itineraryConfig = resultConfig.value;
    final result = await _itineraryConfigRepository.setItineraryConfig(
      itineraryConfig.copyWith(destination: destinationRef, activities: []),
    );
    if (result is Error<bool>) {
      _log.warning('Failed to store ItineraryConfig', result.error);
    }
    return result;
  }
}
