import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/config/di.dart';
import 'package:tictactoe/config/router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        initial: true,
        path: '/',
        page: SplashRoute.page,
      ),
      AutoRoute(
        path: '/login',
        page: LoginRoute.page,
      ),
      AutoRoute(
        path: '/register',
        page: RegisterRoute.page,
      ),
      AutoRoute(
        path: '/home',
        page: HomeRoute.page,
      ),
      AutoRoute(
        path: '/game',
        page: GameRoute.page,
      ),
    ];
  }
}

AppRouter get router => di();
