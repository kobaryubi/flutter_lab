import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PetsApi
void main() {
  final instance = Openapi().getPetsApi();

  group(PetsApi, () {
    //Future<BuiltList<Pet>> petsGet({ int limit }) async
    test('test petsGet', () async {
      // TODO
    });

  });
}
