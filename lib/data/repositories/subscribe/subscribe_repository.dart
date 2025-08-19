import 'package:flutter_lab/utils/result.dart';

abstract class SubscribeRepository {
  Future<Result<void>> subscribe();
}
