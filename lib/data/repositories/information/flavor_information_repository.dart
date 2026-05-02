import 'package:flutter_lab/domain/information/information_repository.dart';
import 'package:result_dart/result_dart.dart';

/// [InformationRepository] implementation that builds the detail page
/// URL by appending `<id>.html` to a configured base URL.
class FlavorInformationRepository implements InformationRepository {
  FlavorInformationRepository({required String baseUrl}) : _baseUrl = baseUrl;

  final String _baseUrl;

  @override
  Result<Uri> getDetailUrl({required String id}) =>
      Success(Uri.parse('$_baseUrl/$id.html'));
}
