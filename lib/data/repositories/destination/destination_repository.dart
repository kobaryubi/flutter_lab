import 'package:flutter_lab/domain/models/destination/destination.dart';
import 'package:flutter_lab/utils/result.dart';

abstract class DestinationRepository {
  Future<Result<List<Destination>>> getDestinations();
}
