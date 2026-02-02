import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:flutter_lab/data/mapper/pet/pet_mapper.auto_mappr.dart';
import 'package:flutter_lab/domain/entity/pet/pet.dart';
import 'package:petstore/petstore.dart' as petstore;

@AutoMappr([MapType<petstore.Pet, Pet>(reverse: true)])
class PetMapper extends $PetMapper {}
