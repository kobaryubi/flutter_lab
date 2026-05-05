import 'package:result_dart/result_dart.dart';

/// Gateway interface for managing the application icon badge.
abstract class AppBadgeGateway {
  /// Removes the application icon badge.
  AsyncResult<Unit> clearBadge();
}
