import 'dart:convert';

import 'package:flutter_lab/data/repositories/album/album_repository.dart';
import 'package:flutter_lab/domain/entity/album/album.dart';
import 'package:http/http.dart' as http;
import 'package:result_dart/result_dart.dart';

class AlbumRepositoryRemote implements AlbumRepository {
  @override
  Future<Result<Album>> fetchAlbum() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    );
    if (response.statusCode == 200) {
      return Album.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      ).toSuccess();
    }

    return Exception('Failed to load album').toFailure();
  }
}
