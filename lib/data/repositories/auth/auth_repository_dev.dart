import 'package:flutter_lab/data/repositories/auth/auth_repository.dart';
import 'package:flutter_lab/utils/result.dart';

class AuthRepositoryDev extends AuthRepository {
  @override
  Future<bool> get isAuthenticated => Future.value(true);

  @override
  Future<Result<void>> login({
    required String email,
    required String password,
  }) async {
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> logout() async {
    return const Result.ok(null);
  }
}
