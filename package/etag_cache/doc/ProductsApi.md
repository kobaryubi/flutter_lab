# etag_cache.api.ProductsApi

## Load the API package
```dart
import 'package:etag_cache/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**productsWithEtagGet**](ProductsApi.md#productswithetagget) | **GET** /products/with-etag | Returns products with an ETag header
[**productsWithoutEtagGet**](ProductsApi.md#productswithoutetagget) | **GET** /products/without-etag | Returns products without an ETag header


# **productsWithEtagGet**
> BuiltList<Product> productsWithEtagGet()

Returns products with an ETag header

### Example
```dart
import 'package:etag_cache/api.dart';

final api = EtagCache().getProductsApi();

try {
    final response = api.productsWithEtagGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->productsWithEtagGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Product&gt;**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productsWithoutEtagGet**
> BuiltList<Product> productsWithoutEtagGet()

Returns products without an ETag header

### Example
```dart
import 'package:etag_cache/api.dart';

final api = EtagCache().getProductsApi();

try {
    final response = api.productsWithoutEtagGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->productsWithoutEtagGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Product&gt;**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

