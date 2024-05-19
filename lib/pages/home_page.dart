import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tictactoe/common/data_state.dart';
import 'package:tictactoe/common/widgets/failure_and_retry.dart';
import 'package:tictactoe/config/di.dart';
import 'package:tictactoe/config/router.dart';
import 'package:tictactoe/config/router.gr.dart';
import 'package:tictactoe/models/game.dart';
import 'package:tictactoe/state/auth_cubit.dart';
import 'package:tictactoe/state/game_cubit.dart';

@RoutePage()
class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        final sub = di<FirebaseAuth>().authStateChanges().listen(
          (user) async {
            if (user == null) {
              await context.read<AuthCubit>().logout();
              router.pushAndPopUntil(
                const LoginRoute(),
                predicate: (route) => false,
              );
            }
          },
        );
        return sub.cancel;
      },
      const [],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () async {
              final shouldLogout = await showDialog<bool>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Logout?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: const Text('No'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: const Text('Yes'),
                      ),
                    ],
                  );
                },
              ).then((value) => value ?? false);
              if (!context.mounted || !shouldLogout) return;

              await context.read<AuthCubit>().logout();
              router.pushAndPopUntil(
                const LoginRoute(),
                predicate: (route) => false,
              );
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Create new game',
        child: const Icon(Icons.add),
      ),
      body: const _GamesList(),
    );
  }
}

class _GamesList extends HookWidget {
  const _GamesList();

  @override
  Widget build(BuildContext context) {
    final gamesState = context.select((GameCubit c) => c.state.getGamesState);

    useEffect(
      () {
        context.read<GameCubit>().getGames();
        return null;
      },
      const [],
    );

    return switch (gamesState) {
      DataStateLoading() ||
      DataStateInitial() =>
        const Center(child: CircularProgressIndicator.adaptive()),
      DataStateFailure(failure: final f) => FailureAndRetry(
          message: f.messageOrDefault,
          onRetry: () {
            context.read<GameCubit>().getGames();
          },
        ),
      DataStateSuccess(data: final games) => _GamesData(games)
    };
  }
}

class _GamesData extends StatelessWidget {
  const _GamesData(this.games);

  final List<Game> games;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: () {
        return context.read<GameCubit>().getGames();
      },
      child: ListView.builder(
        itemCount: max(games.length, 1),
        itemBuilder: (context, index) {
          if (games.isEmpty) {
            return const Center(child: Text('No games found'));
          }
          final game = games[index];
          return ListTile(
            title: Text(game.id),
            onTap: () {
              throw UnimplementedError();
            },
          );
        },
      ),
    );
  }
}
