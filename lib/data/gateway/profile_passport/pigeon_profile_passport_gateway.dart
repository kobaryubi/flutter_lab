import 'package:flutter_lab/domain/profile_passport/profile_passport_gateway.dart';
import 'package:flutter_lab/gen/pigeon/profile_passport.g.dart';
import 'package:result_dart/result_dart.dart';

/// [ProfilePassportGateway] implementation backed by Pigeon-generated
/// [ProfilePassportHostApi].
///
/// Calls the native host to interact with the ProfilePassport SDK.
class PigeonProfilePassportGateway implements ProfilePassportGateway {
  final ProfilePassportHostApi _profilePassportHostApi =
      ProfilePassportHostApi();

  @override
  AsyncResult<Unit> startService() async {
    try {
      await _profilePassportHostApi.startService();

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }
}
