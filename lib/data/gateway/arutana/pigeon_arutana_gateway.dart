import 'package:flutter_lab/domain/arutana/arutana_gateway.dart';
import 'package:flutter_lab/gen/pigeon/arutana.g.dart';
import 'package:result_dart/result_dart.dart';

/// [ArutanaGateway] implementation backed by Pigeon-generated
/// [ArutanaHostApi].
///
/// Calls the native host to initialize Arutana ads.
class PigeonArutanaGateway implements ArutanaGateway {
  final ArutanaHostApi _arutanaHostApi = ArutanaHostApi();

  @override
  AsyncResult<void> initializeInterstitialAd() async {
    try {
      _arutanaHostApi.initializeInterstitialAd();

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<void> initializeMovieAd() async {
    try {
      _arutanaHostApi.initializeMovieAd();

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }
}
