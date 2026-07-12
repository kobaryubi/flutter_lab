import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
import 'package:flutter_lab/domain/entity/user_profile/user_profile.dart';
import 'package:flutter_lab/domain/user_profile/user_profile_repository.dart';
import 'package:result_dart/result_dart.dart';

/// [UserProfileRepository] fetching the profile from the remote API with
/// bearer token authorization.
class DioUserProfileRepository implements UserProfileRepository {
  DioUserProfileRepository({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  AsyncResult<UserProfile> fetchUserProfile({
    required String accessToken,
  }) async {
    try {
      final response = await _dio.get<Map<String, Object?>>(
        '/my_page',
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
      );
      final data = response.data;

      return data == null
          ? const DomainException.internal().toFailure()
          : UserProfile.fromJson(data).toSuccess();
    } on DioException catch (exception) {
      return exception.response?.statusCode == HttpStatus.unauthorized
          ? const DomainException.unauthenticated().toFailure()
          : exception.toFailure();
    }
  }
}
