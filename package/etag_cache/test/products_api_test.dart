import 'package:test/test.dart';
import 'package:etag_cache/etag_cache.dart';


/// tests for ProductsApi
void main() {
  final instance = EtagCache().getProductsApi();

  group(ProductsApi, () {
    // Returns products with an ETag header
    //
    //Future<BuiltList<Product>> productsWithEtagGet() async
    test('test productsWithEtagGet', () async {
      // TODO
    });

    // Returns products without an ETag header
    //
    //Future<BuiltList<Product>> productsWithoutEtagGet() async
    test('test productsWithoutEtagGet', () async {
      // TODO
    });

  });
}
