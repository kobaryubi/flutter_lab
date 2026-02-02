import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/entity/album/album.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum(http.Client client) async {
  final response = await client.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
  );

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  }

  throw Exception('Failed to load album');
}

class CookbookNetworkingFetchDataScreen extends StatefulWidget {
  const CookbookNetworkingFetchDataScreen({super.key});

  @override
  State<CookbookNetworkingFetchDataScreen> createState() =>
      _CookbookNetworkingFetchDataScreenState();
}

class _CookbookNetworkingFetchDataScreenState
    extends State<CookbookNetworkingFetchDataScreen> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum(http.Client());
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.white1,
      child: Center(
        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            final data = snapshot.data;
            if (snapshot.hasData && data != null) {
              return Text(data.title);
            }

            if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            return const Text('Loading...');
          },
        ),
      ),
    );
  }
}
