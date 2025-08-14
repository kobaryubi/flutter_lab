import 'package:flutter_lab/domain/models/continent/continent.dart';
import 'package:flutter_lab/utils/result.dart';

abstract class ContinentRepository {
  Future<Result<List<Continent>>> getContinents();
}
