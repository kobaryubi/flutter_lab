import 'package:flutter_lab/data/repositories/destination/destination_repository.dart';
import 'package:flutter_lab/data/services/api/api_client.dart';
import 'package:flutter_lab/domain/models/destination/destination.dart';
import 'package:flutter_lab/utils/result.dart';

class DestinationRepositoryRemote implements DestinationRepository {
  DestinationRepositoryRemote({required ApiClient apiClient})
    : _apiClient = apiClient;

  final ApiClient _apiClient;
  List<Destination>? _cachedData;

  @override
  Future<Result<List<Destination>>> getDestinations() async {
    final cachedData = _cachedData;

    if (cachedData == null) {
      final result = await _apiClient.getDestinations();
      if (result is Ok<List<Destination>>) {
        _cachedData = result.value;
      }

      return result;
    }

    return Result.ok(cachedData);
  }
}
