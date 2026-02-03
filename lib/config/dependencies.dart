import 'package:flutter_lab/data/repositories/auth/auth_repository.dart';
import 'package:flutter_lab/data/repositories/auth/auth_repository_dev.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final List<SingleChildWidget> providersRemote = [];

final List<SingleChildWidget> providersLocal = [
  ChangeNotifierProvider<AuthRepository>(create: (_) => AuthRepositoryDev()),
];
