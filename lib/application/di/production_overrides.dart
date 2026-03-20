import 'package:dio/dio.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/// Provider overrides for the production flavor.
final List<Override> productionOverrides = [
  dioProvider.overrideWithValue(
    Dio(
      BaseOptions(
        contentType: Headers.jsonContentType,
        baseUrl: 'https://api.example.com',
      ),
    ),
  ),
];
