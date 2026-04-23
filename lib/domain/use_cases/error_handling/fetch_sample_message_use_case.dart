import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
import 'package:result_dart/result_dart.dart';

/// Sample use case that simulates a domain-layer success or failure so the
/// UI layer can exercise its exception-to-error-screen mapping.
class FetchSampleMessageUseCase {
  const FetchSampleMessageUseCase();

  /// Returns a sample success message when [simulatedFailure] is `null`,
  /// otherwise returns that [DomainException] as a failure.
  AsyncResult<String> call({DomainException? simulatedFailure}) async {
    if (simulatedFailure != null) {
      return simulatedFailure.toFailure();
    }

    return 'Hello from the domain layer.'.toSuccess();
  }
}
