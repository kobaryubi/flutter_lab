import 'package:flutter_lab/data/repositories/activity/activity_repository.dart';
import 'package:flutter_lab/data/services/api/api_client.dart';
import 'package:flutter_lab/domain/models/activity/activity.dart';
import 'package:flutter_lab/utils/result.dart';

class ActivityRepositoryRemote implements ActivityRepository {
  ActivityRepositoryRemote({required ApiClient apiClient})
    : _apiClient = apiClient;

  final ApiClient _apiClient;

  final Map<String, List<Activity>> _cachedData = {};

  @override
  Future<Result<List<Activity>>> getByDestination(String ref) async {
    if (!_cachedData.containsKey(ref)) {
      final result = await _apiClient.getActivityByDestination(ref);
      if (result is Ok<List<Activity>>) {
        _cachedData[ref] = result.value;
      }
      return result;
    }

    return Result.ok(_cachedData[ref]!);
  }
}
