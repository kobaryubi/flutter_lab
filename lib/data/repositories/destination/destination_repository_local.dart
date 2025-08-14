import 'package:flutter_lab/data/repositories/destination/destination_repository.dart';
import 'package:flutter_lab/data/services/local/local_data_service.dart';
import 'package:flutter_lab/domain/models/destination/destination.dart';
import 'package:flutter_lab/utils/result.dart';

class DestinationRepositoryLocal implements DestinationRepository {
  DestinationRepositoryLocal({required LocalDataService localDataService})
    : _localDataService = localDataService;

  final LocalDataService _localDataService;

  @override
  Future<Result<List<Destination>>> getDestinations() async {
    try {
      return Result.ok(await _localDataService.getDestinations());
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
