# petstore.api.PetsApi

## Load the API package
```dart
import 'package:petstore/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**petsGet**](PetsApi.md#petsget) | **GET** /pets | 
[**petsPost**](PetsApi.md#petspost) | **POST** /pets | create a pet


# **petsGet**
> BuiltList<Pet> petsGet(limit)



### Example
```dart
import 'package:petstore/api.dart';

final api = Petstore().getPetsApi();
final int limit = 56; // int | 

try {
    final response = api.petsGet(limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PetsApi->petsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | 

### Return type

[**BuiltList&lt;Pet&gt;**](Pet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **petsPost**
> petsPost(pet)

create a pet

### Example
```dart
import 'package:petstore/api.dart';

final api = Petstore().getPetsApi();
final Pet pet = ; // Pet | 

try {
    api.petsPost(pet);
} catch on DioException (e) {
    print('Exception when calling PetsApi->petsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pet** | [**Pet**](Pet.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

