import 'package:flutter/widgets.dart';
import 'package:flutter_lab/data/repositories/activity/activity_repository.dart';
import 'package:flutter_lab/data/repositories/itinerary_config/itinerary_config_repository.dart';
import 'package:flutter_lab/domain/models/activity/activity.dart';
import 'package:flutter_lab/domain/models/itinerary_config/itinerary_config.dart';
import 'package:flutter_lab/utils/command.dart';
import 'package:flutter_lab/utils/result.dart';

class ActivitiesViewModel extends ChangeNotifier {
  ActivitiesViewModel({
    required ActivityRepository activityRepository,
    required ItineraryConfigRepository itineraryConfigRepository,
  }) : _activityRepository = activityRepository,
       _itineraryConfigRepository = itineraryConfigRepository {
    loadActivities = Command0(_loadActivities)..execute();
    saveActivities = Command0(_saveActivities);
  }

  final ActivityRepository _activityRepository;
  final ItineraryConfigRepository _itineraryConfigRepository;
  List<Activity> _daytimeActivities = <Activity>[];
  List<Activity> _eveningActivities = <Activity>[];
  final Set<String> _selectedActivities = <String>{};

  List<Activity> get daytimeActivities => _daytimeActivities;
  List<Activity> get eveningActivities => _eveningActivities;

  Set<String> get selectedActivities => _selectedActivities;

  late final Command0 loadActivities;
  late final Command0 saveActivities;

  Future<Result<void>> _loadActivities() async {
    final result = await _itineraryConfigRepository.getItineraryConfig();
    switch (result) {
      case Error<ItineraryConfig>():
        return result;
      case Ok<ItineraryConfig>():
    }

    final destinationRef = result.value.destination;
    if (destinationRef == null) {
      return Result.error(Exception('Destination not found'));
    }

    _selectedActivities.addAll(result.value.activities);

    final resultActivities = await _activityRepository.getByDestination(
      destinationRef,
    );
    switch (resultActivities) {
      case Ok():
        {
          _daytimeActivities = resultActivities.value
              .where(
                (activity) => [
                  TimeOfDay.any,
                  TimeOfDay.morning,
                  TimeOfDay.afternoon,
                ].contains(activity.timeOfDay),
              )
              .toList();

          _eveningActivities = resultActivities.value
              .where(
                (activity) => [
                  TimeOfDay.evening,
                  TimeOfDay.night,
                ].contains(activity.timeOfDay),
              )
              .toList();
        }
      case Error():
        break;
    }

    notifyListeners();
    return resultActivities;
  }

  void addActivity(String activityRef) {
    assert(
      (_daytimeActivities + _eveningActivities).any(
        (activity) => activity.ref == activityRef,
      ),
      'Activity $activityRef not found',
    );
    _selectedActivities.add(activityRef);
    notifyListeners();
  }

  void removeActivity(String activityRef) {
    assert(
      (_daytimeActivities + _eveningActivities).any(
        (activity) => activity.ref == activityRef,
      ),
      'Activity $activityRef not found',
    );
    _selectedActivities.remove(activityRef);
    notifyListeners();
  }

  Future<Result<void>> _saveActivities() async {
    final resultConfig = await _itineraryConfigRepository.getItineraryConfig();
    switch (resultConfig) {
      case Error<ItineraryConfig>():
        return resultConfig;
      case Ok<ItineraryConfig>():
    }

    final itineraryConfig = resultConfig.value;
    final result = await _itineraryConfigRepository.setItineraryConfig(
      itineraryConfig.copyWith(activities: _selectedActivities.toList()),
    );
    return result;
  }
}
