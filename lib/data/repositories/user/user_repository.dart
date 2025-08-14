import 'package:flutter_lab/domain/models/user/user.dart';
import 'package:flutter_lab/utils/result.dart';

abstract class UserRepository {
  Future<Result<User>> getUser();
}
