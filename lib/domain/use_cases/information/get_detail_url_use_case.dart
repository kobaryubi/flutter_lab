import 'package:flutter_lab/domain/information/information_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Resolves the detail page URL for the information with the given id.
class GetDetailUrlUseCase {
  GetDetailUrlUseCase({
    required InformationRepository informationRepository,
  }) : _informationRepository = informationRepository;

  final InformationRepository _informationRepository;

  /// Returns the detail page URL for the information identified by [id].
  Result<Uri> call({required String id}) =>
      _informationRepository.getDetailUrl(id: id);
}
