import 'package:flutter_lab/domain/models/album/album.dart';
import 'package:result_dart/result_dart.dart';

abstract class AlbumRepository {
  Future<Result<Album>> fetchAlbum();
}
