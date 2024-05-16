import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/config/di.config.dart';

final di = GetIt.instance;

@injectableInit
void configureDependencies() {
  di.init();
}

@module
abstract class ExternalDependencies {
  @singleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
}
