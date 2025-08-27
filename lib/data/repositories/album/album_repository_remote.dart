import 'package:flutter_lab/data/repositories/album/album_repository.dart';
import 'package:flutter_lab/domain/models/album/album.dart';
import 'package:result_dart/functions.dart';
import 'package:result_dart/result_dart.dart';

class AlbumRepositoryRemote implements AlbumRepository {
  @override
  Future<Result<Album>> fetchAlbum() async {
    return successOf(
      const Album(userId: 1, id: 1, title: 'quidem molestiae enim'),
    );
  }
}
