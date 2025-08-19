import 'package:flutter_lab/utils/result.dart';

abstract class SubscriptionRepository {
  Future<Result<void>> subscribe();
}
