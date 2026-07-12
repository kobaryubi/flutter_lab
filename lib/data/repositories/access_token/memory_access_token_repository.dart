import 'package:flutter_lab/application/memory_storage/memory_storage_gateway.dart';
import 'package:flutter_lab/domain/access_token/access_token_repository.dart';
import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
import 'package:result_dart/result_dart.dart';

/// [AccessTokenRepository] backed by the process-scoped in-memory storage.
class MemoryAccessTokenRepository implements AccessTokenRepository {
  MemoryAccessTokenRepository({
    required MemoryStorageGateway memoryStorageGateway,
  }) : _memoryStorageGateway = memoryStorageGateway;

  final MemoryStorageGateway _memoryStorageGateway;

  static const _accessTokenKey = 'refresh_token_sample.access_token';

  @override
  Result<Unit> saveAccessToken({required String accessToken}) {
    _memoryStorageGateway.save(key: _accessTokenKey, value: accessToken);

    return unit.toSuccess();
  }

  @override
  Result<String> getAccessToken() {
    final accessToken = _memoryStorageGateway.read<String>(
      key: _accessTokenKey,
    );

    return accessToken == null
        ? const DomainException.notFound().toFailure()
        : accessToken.toSuccess();
  }
}
