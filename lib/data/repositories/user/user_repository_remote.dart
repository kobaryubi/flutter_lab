import 'package:flutter_lab/data/repositories/user/user_repository.dart';
import 'package:flutter_lab/data/services/api/api_client.dart';
import 'package:flutter_lab/data/services/api/model/user/user_api_model.dart';
import 'package:flutter_lab/domain/models/user/user.dart';
import 'package:flutter_lab/utils/result.dart';

class UserRepositoryRemote implements UserRepository {
  UserRepositoryRemote({required ApiClient apiClient}) : _apiClient = apiClient;

  final ApiClient _apiClient;

  User? _cachedData;

  @override
  Future<Result<User>> getUser() async {
    if (_cachedData != null) {
      return Future.value(Result.ok(_cachedData!));
    }

    final result = await _apiClient.getUser();
    switch (result) {
      case Ok<UserApiModel>():
        final user = User(
          name: result.value.name,
          picture: result.value.picture,
        );
        _cachedData = user;
        return Result.ok(user);
      case Error<UserApiModel>():
        return Result.error(result.error);
    }
  }
}
