// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i10;
import 'package:tictactoe/models/game.dart' as _i9;
import 'package:tictactoe/pages/auth/login_page.dart' as _i4;
import 'package:tictactoe/pages/auth/register_page.dart' as _i5;
import 'package:tictactoe/pages/game/create_or_join_game.dart' as _i1;
import 'package:tictactoe/pages/game/game_page.dart' as _i2;
import 'package:tictactoe/pages/home_page.dart' as _i3;
import 'package:tictactoe/pages/splash_page.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    CreateOrJoinGameRoute.name: (routeData) {
      return _i7.AutoRoutePage<_i8.Stream<_i9.Game>>(
        routeData: routeData,
        child: const _i1.CreateOrJoinGamePage(),
      );
    },
    GameRoute.name: (routeData) {
      final args = routeData.argsAs<GameRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.GamePage(
          key: args.key,
          gameStream: args.gameStream,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RegisterPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CreateOrJoinGamePage]
class CreateOrJoinGameRoute extends _i7.PageRouteInfo<void> {
  const CreateOrJoinGameRoute({List<_i7.PageRouteInfo>? children})
      : super(
          CreateOrJoinGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateOrJoinGameRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.GamePage]
class GameRoute extends _i7.PageRouteInfo<GameRouteArgs> {
  GameRoute({
    _i10.Key? key,
    required _i8.Stream<_i9.Game> gameStream,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          GameRoute.name,
          args: GameRouteArgs(
            key: key,
            gameStream: gameStream,
          ),
          initialChildren: children,
        );

  static const String name = 'GameRoute';

  static const _i7.PageInfo<GameRouteArgs> page =
      _i7.PageInfo<GameRouteArgs>(name);
}

class GameRouteArgs {
  const GameRouteArgs({
    this.key,
    required this.gameStream,
  });

  final _i10.Key? key;

  final _i8.Stream<_i9.Game> gameStream;

  @override
  String toString() {
    return 'GameRouteArgs{key: $key, gameStream: $gameStream}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RegisterPage]
class RegisterRoute extends _i7.PageRouteInfo<void> {
  const RegisterRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
