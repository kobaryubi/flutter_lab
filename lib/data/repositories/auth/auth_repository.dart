import 'package:flutter/widgets.dart';
import 'package:flutter_lab/utils/result.dart';

abstract class AuthRepository extends ChangeNotifier {
  Future<bool> get isAuthenticated;
  Future<Result<void>> login({required String email, required String password});
  Future<Result<void>> logout();
}
