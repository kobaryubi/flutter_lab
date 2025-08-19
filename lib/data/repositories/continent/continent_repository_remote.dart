import 'package:flutter_lab/data/repositories/continent/continent_repository.dart';
import 'package:flutter_lab/data/services/api/api_client.dart';
import 'package:flutter_lab/domain/models/continent/continent.dart';
import 'package:flutter_lab/utils/result.dart';

class ContinentRepositoryRemote implements ContinentRepository {
  ContinentRepositoryRemote({required ApiClient apiClient})
    : _apiClient = apiClient;

  final ApiClient _apiClient;

  List<Continent>? _cachedData;

  @override
  Future<Result<List<Continent>>> getContinents() async {
    if (_cachedData == null) {
      final result = await _apiClient.getContinents();
      if (result is Ok<List<Continent>>) {
        _cachedData = result.value;
      }

      return result;
    }

    return Result.ok(_cachedData!);
  }
}
