import 'dart:convert';
import 'dart:io';

import 'package:flutter_lab/data/services/api/model/booking/booking_api_model.dart';
import 'package:flutter_lab/data/services/api/model/user/user_api_model.dart';
import 'package:flutter_lab/domain/models/activity/activity.dart';
import 'package:flutter_lab/domain/models/continent/continent.dart';
import 'package:flutter_lab/domain/models/destination/destination.dart';
import 'package:flutter_lab/utils/result.dart';

class ApiClient {
  ApiClient({String? host, int? port, HttpClient Function()? clientFactory})
    : _host = host ?? 'localhost',
      _port = port ?? 8080,
      _clientFactory = clientFactory ?? HttpClient.new;

  final String _host;
  final int _port;
  final HttpClient Function() _clientFactory;

  Future<Result<List<Continent>>> getContinents() async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/continent');
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        return Result.ok(
          // ignore: argument_type_not_assignable
          json.map((element) => Continent.fromJson(element)).toList(),
        );
      }

      return const Result.error(HttpException('Invalid response'));
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<List<Destination>>> getDestinations() async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/destination');
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;

        return Result.ok(
          // ignore: argument_type_not_assignable
          json.map((element) => Destination.fromJson(element)).toList(),
        );
      }

      return const Result.error(HttpException('Invalid response'));
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<List<Activity>>> getActivityByDestination(String ref) async {
    final client = _clientFactory();
    try {
      final request = await client.get(
        _host,
        _port,
        '/destination/$ref/activity',
      );
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        final activities = json
            // ignore: argument_type_not_assignable
            .map((element) => Activity.fromJson(element))
            .toList();
        return Result.ok(activities);
      }

      return const Result.error(HttpException('Invalid response'));
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<List<BookingApiModel>>> getBookings() async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/booking');
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        final bookings = json
            // ignore: argument_type_not_assignable
            .map((element) => BookingApiModel.fromJson(element))
            .toList();

        return Result.ok(bookings);
      }

      return const Result.error(HttpException('Invalid response'));
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<BookingApiModel>> getBooking(int id) async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/booking/$id');
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        // ignore: argument_type_not_assignable
        final booking = BookingApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(booking);
      }

      return const Result.error(HttpException('Invalid response'));
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<BookingApiModel>> postBooking(BookingApiModel booking) async {
    final client = _clientFactory();
    try {
      final request = await client.post(_host, _port, '/booking');
      request.write(jsonEncode(booking));
      final response = await request.close();
      if (response.statusCode == 201) {
        final stringData = await response.transform(utf8.decoder).join();
        // ignore: argument_type_not_assignable
        final booking = BookingApiModel.fromJson(jsonDecode(stringData));

        return Result.ok(booking);
      }

      return const Result.error(HttpException('Invalid response'));
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<UserApiModel>> getUser() async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/user');
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        // ignore: argument_type_not_assignable
        final user = UserApiModel.fromJson(jsonDecode(stringData));
        return Result.ok(user);
      } else {
        return const Result.error(HttpException('Invalid response'));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }
}
