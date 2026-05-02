import 'package:flutter_lab/domain/information/information_repository.dart';
import 'package:flutter_lab/flavors.dart';
import 'package:result_dart/result_dart.dart';

/// [InformationRepository] implementation that builds the detail page
/// URL by appending `<id>.html` to the flavor-configured base URL.
class FlavorInformationRepository implements InformationRepository {
  const FlavorInformationRepository();

  @override
  Result<Uri> getDetailUrl({required String id}) =>
      Success(Uri.parse('${F.detailBaseUrl}/$id.html'));
}
