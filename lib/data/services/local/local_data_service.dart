import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_lab/config/assets.dart';
import 'package:flutter_lab/domain/models/continent/continent.dart';
import 'package:flutter_lab/domain/models/destination/destination.dart';
import 'package:flutter_lab/domain/models/user/user.dart';

class LocalDataService {
  User getUser() {
    return const User(name: 'Sofie', picture: 'assets/user.jpg');
  }

  List<Continent> getContinents() {
    return [
      const Continent(
        name: 'Europe',
        imageUrl: 'https://rstr.in/google/tripedia/TmR12QdlVTT',
      ),
      const Continent(
        name: 'Asia',
        imageUrl: 'https://rstr.in/google/tripedia/VJ8BXlQg8O1',
      ),
      const Continent(
        name: 'South America',
        imageUrl: 'https://rstr.in/google/tripedia/flm_-o1aI8e',
      ),
      const Continent(
        name: 'Africa',
        imageUrl: 'https://rstr.in/google/tripedia/-nzi8yFOBpF',
      ),
      const Continent(
        name: 'North America',
        imageUrl: 'https://rstr.in/google/tripedia/jlbgFDrSUVE',
      ),
      const Continent(
        name: 'Oceania',
        imageUrl: 'https://rstr.in/google/tripedia/vxyrDE-fZVL',
      ),
      const Continent(
        name: 'Australia',
        imageUrl: 'https://rstr.in/google/tripedia/z6vy6HeRyvZ',
      ),
    ];
  }

  Future<List<Destination>> getDestinations() async {
    final json = await _loadStringAsset(Assets.destinations);
    return json.map<Destination>(Destination.fromJson).toList();
  }

  Future<List<Map<String, dynamic>>> _loadStringAsset(String asset) async {
    final localData = await rootBundle.loadString(asset);
    return (jsonDecode(localData) as List).cast<Map<String, dynamic>>();
  }
}
