import 'package:flutter_lab/domain/profile_passport/profile_passport_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that starts the ProfilePassport SDK service.
class StartProfilePassportServiceUseCase {
  StartProfilePassportServiceUseCase({
    required ProfilePassportGateway profilePassportGateway,
  }) : _profilePassportGateway = profilePassportGateway;

  final ProfilePassportGateway _profilePassportGateway;

  /// Starts the PPSDK service.
  AsyncResult<Unit> call() => _profilePassportGateway.startService();
}
