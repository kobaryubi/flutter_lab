import 'package:result_dart/result_dart.dart';

/// Repository interface for information-related operations.
abstract class InformationRepository {
  /// Returns the URL of the information detail page for the given [id].
  Result<Uri> getDetailUrl({required String id});
}
