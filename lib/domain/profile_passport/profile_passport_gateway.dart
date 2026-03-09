import 'package:result_dart/result_dart.dart';

/// Gateway for the ProfilePassport SDK.
///
/// Abstracts native ProfilePassport SDK calls behind a domain-layer interface.
abstract class ProfilePassportGateway {
  /// Starts the PPSDK service.
  AsyncResult<Unit> startService();
}
