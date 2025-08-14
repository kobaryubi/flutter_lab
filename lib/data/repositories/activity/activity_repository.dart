import 'package:flutter_lab/domain/models/activity/activity.dart';
import 'package:flutter_lab/utils/result.dart';

abstract class ActivityRepository {
  Future<Result<List<Activity>>> getByDestination(String ref);
}
