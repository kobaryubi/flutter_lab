import 'package:result_dart/result_dart.dart';

/// Repository interface for app store operations.
abstract class AppStoreRepository {
  /// Returns the app store URL for the current platform.
  Result<Uri> getUrl();
}
