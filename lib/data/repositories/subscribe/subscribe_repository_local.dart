import 'package:flutter_lab/data/repositories/subscribe/subscribe_repository.dart';
import 'package:flutter_lab/utils/result.dart';

class SubscribeRepositoryLocal implements SubscribeRepository {
  @override
  Future<Result<void>> subscribe() async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      throw Exception('Failed to subscribe');
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
