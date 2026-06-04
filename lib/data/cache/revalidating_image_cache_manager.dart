import 'dart:async';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:http/http.dart' as http;

/// [CacheManager] for images that revalidates the on-disk cache on every read
/// instead of trusting a downloaded file for the default 7 days.
///
/// It backs `CachedNetworkImage` so that, after the bytes are first stored
/// together with the server `ETag`, each subsequent request sends that ETag as
/// an `If-None-Match` header. The server then answers `304 Not Modified` (the
/// cached bytes are reused) or `200 OK` (the bytes are replaced), which makes a
/// content swap on the server visible on the next fetch.
class RevalidatingImageCacheManager extends CacheManager
    with ImageCacheManager {
  /// Returns the shared singleton so every caller hits the same on-disk store.
  ///
  /// `CachedNetworkImage` resolves this manager on each rebuild; if every call
  /// created a new instance, multiple managers would open the same [key] store
  /// (sqflite DB + files) at once and clobber each other.
  factory RevalidatingImageCacheManager() => _instance;

  RevalidatingImageCacheManager._()
    : super(Config(key, fileService: RevalidatingHttpFileService()));

  /// Cache store key, kept separate from the default manager's store.
  static const key = 'revalidatingImageCache';

  /// The one shared instance the factory hands out. Lazily created on first
  /// access (Dart initializes `static final` lazily).
  static final RevalidatingImageCacheManager _instance =
      RevalidatingImageCacheManager._();
}

/// [FileService] that marks every response as immediately stale so that
/// [RevalidatingImageCacheManager] always performs an ETag revalidation.
class RevalidatingHttpFileService extends FileService {
  final http.Client _httpClient = http.Client();

  @override
  Future<FileServiceResponse> get(
    String url, {
    Map<String, String>? headers,
  }) async {
    final request = http.Request('GET', Uri.parse(url));

    if (headers != null) {
      request.headers.addAll(headers);
    }

    final response = await _httpClient.send(request);

    return _AlwaysStaleHttpResponse(response);
  }
}

/// [HttpGetResponse] whose cached file is considered expired the moment it is
/// stored, forcing an ETag revalidation on the next request.
class _AlwaysStaleHttpResponse extends HttpGetResponse {
  _AlwaysStaleHttpResponse(super.response);

  @override
  DateTime get validTill => DateTime.now();
}
