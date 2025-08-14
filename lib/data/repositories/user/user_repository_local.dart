import 'package:flutter_lab/data/repositories/user/user_repository.dart';
import 'package:flutter_lab/data/services/local/local_data_service.dart';
import 'package:flutter_lab/domain/models/user/user.dart';
import 'package:flutter_lab/utils/result.dart';

class UserRepositoryLocal implements UserRepository {
  UserRepositoryLocal({required LocalDataService localDataService})
    : _localDataService = localDataService;

  final LocalDataService _localDataService;

  @override
  Future<Result<User>> getUser() async {
    return Result.ok(_localDataService.getUser());
  }
}
