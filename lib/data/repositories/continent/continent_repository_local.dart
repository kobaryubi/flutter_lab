import 'package:flutter_lab/data/repositories/continent/continent_repository.dart';
import 'package:flutter_lab/data/services/local/local_data_service.dart';
import 'package:flutter_lab/domain/models/continent/continent.dart';
import 'package:flutter_lab/utils/result.dart';

class ContinentRepositoryLocal implements ContinentRepository {
  ContinentRepositoryLocal({required LocalDataService localDataService})
    : _localDataService = localDataService;

  final LocalDataService _localDataService;

  @override
  Future<Result<List<Continent>>> getContinents() async {
    return Future.value(Result.ok(_localDataService.getContinents()));
  }
}
