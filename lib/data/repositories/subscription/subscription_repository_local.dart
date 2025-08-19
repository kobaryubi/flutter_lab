import 'package:flutter_lab/data/repositories/subscription/subscription_repository.dart';
import 'package:flutter_lab/utils/result.dart';

class SubscriptionRepositoryLocal implements SubscriptionRepository {
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
