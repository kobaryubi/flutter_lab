import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'petstore_client.g.dart';

@RestApi()
abstract class PetStoreClient {
  factory PetStoreClient(Dio dio, {String? baseUrl}) = _PetStoreClient;

  @POST('/pets')
  Future<Pet> createPet(@Body() Pet pet);
}

@JsonSerializable()
class Pet {
  const Pet({required this.id, required this.name});
  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

  final int id;
  final String name;
}
