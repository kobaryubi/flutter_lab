import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/models/album/album.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
