import 'package:flutter/widgets.dart';
import 'package:flutter_lab/data/repositories/continent/continent_repository.dart';
import 'package:flutter_lab/data/repositories/itinerary_config/itinerary_config_repository.dart';
import 'package:flutter_lab/domain/models/continent/continent.dart';
import 'package:flutter_lab/domain/models/itinerary_config/itinerary_config.dart';
import 'package:flutter_lab/utils/command.dart';
import 'package:flutter_lab/utils/result.dart';
import 'package:logging/logging.dart';

class CompassSearchFormViewModel extends ChangeNotifier {
  CompassSearchFormViewModel({
    required ContinentRepository continentRepository,
    required ItineraryConfigRepository itineraryConfigRepository,
  }) : _continentRepository = continentRepository,
       _itineraryConfigRepository = itineraryConfigRepository {
    updateItineraryConfig = Command0(_updateItineraryConfig);
    load = Command0(_load)..execute();
  }

  final _log = Logger('CompassSearchFormViewModel');
  final ContinentRepository _continentRepository;
  final ItineraryConfigRepository _itineraryConfigRepository;
  List<Continent> _continents = [];
  String? _selectedContinent;
  int _guests = 0;

  bool get valid => _guests > 0 && _selectedContinent != null;

  List<Continent> get continents => _continents;
  String? get selectedContinent => _selectedContinent;

  set selectedContinent(String? continent) {
    _selectedContinent = continent;
    _log.finest('Selected continent: $continent');
    notifyListeners();
  }

  int get guests => _guests;

  set guests(int quantity) {
    if (quantity < 0) {
      _guests = 0;
    } else {
      _guests = quantity;
    }
    _log.finest('Set guests number: $_guests');
    notifyListeners();
  }

  late final Command0 load;
  late final Command0 updateItineraryConfig;

  Future<Result<void>> _load() async {
    final result = await _loadContinents();
    if (result is Error) {
      return result;
    }

    return _loadItineraryConfig();
  }

  Future<Result<void>> _loadContinents() async {
    final result = await _continentRepository.getContinents();
    switch (result) {
      case Ok():
        _continents = result.value;
        _log.fine('Continents (${_continents.length}) loaded');
      case Error():
        _log.warning('Failed to load continents', result.error);
    }
    notifyListeners();
    return result;
  }

  Future<Result<void>> _loadItineraryConfig() async {
    final result = await _itineraryConfigRepository.getItineraryConfig();
    switch (result) {
      case Ok<ItineraryConfig>():
        final itineraryConfig = result.value;
        _selectedContinent = itineraryConfig.continent;
        _guests = itineraryConfig.guests ?? 0;
        _log.fine('ItineraryConfig loaded');
        notifyListeners();
      case Error<ItineraryConfig>():
        _log.warning('Failed to load stored ItineraryConfig', result.error);
    }

    return result;
  }

  Future<Result<void>> _updateItineraryConfig() async {
    assert(valid, 'called when valid was false');
    final result = await _itineraryConfigRepository.setItineraryConfig(
      ItineraryConfig(continent: _selectedContinent, guests: _guests),
    );

    switch (result) {
      case Ok<bool>():
        _log.fine('ItineraryConfig saved');
      case Error<bool>():
        _log.warning('Failed to store ItineraryConfig', result.error);
    }

    return result;
  }
}
