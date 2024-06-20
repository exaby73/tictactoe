import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tictactoe/common/data_state.dart';
import 'package:tictactoe/config/router.dart';
import 'package:tictactoe/models/game.dart';
import 'package:tictactoe/state/game_cubit.dart';

@RoutePage<Stream<Game>>()
class CreateOrJoinGamePage extends HookWidget {
  const CreateOrJoinGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final getGameState =
        context.select((GameCubit c) => c.state.getGameByGameIdState);

    useEffect(
      () {
        if (getGameState case DataStateSuccess(data: final game)) {
          context.read<GameCubit>().getGames();
          SchedulerBinding.instance.addPostFrameCallback(
            (_) {
              router.maybePop(game);
            },
          );
        }

        if (getGameState case DataStateFailure(failure: final f)) {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            ScaffoldMessenger.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(f.messageOrDefault),
                ),
              );
          });
        }
        return context.read<GameCubit>().resetGetGameByGameIdState;
      },
      [getGameState],
    );

    final createGameState =
        context.select((GameCubit c) => c.state.createGameState);

    useEffect(
      () {
        if (createGameState case DataStateSuccess(data: final game)) {
          context.read<GameCubit>().getGameByGameId(game.id);
        }

        if (createGameState case DataStateFailure(failure: final f)) {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            ScaffoldMessenger.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(f.messageOrDefault),
                ),
              );
          });
        }
        return context.read<GameCubit>().resetCreateGameState;
      },
      [createGameState],
    );

    final isLoading =
        getGameState is DataStateLoading || createGameState is DataStateLoading;

    return Scaffold(
      appBar: AppBar(title: const Text('Create or Join Game')),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator.adaptive()
            : const _JoinGameForm(),
      ),
    );
  }
}

class _JoinGameForm extends HookWidget {
  const _JoinGameForm();

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            controller: controller,
            decoration: const InputDecoration(labelText: 'Game ID'),
          ),
          const SizedBox(height: 20),
          ButtonBar(
            children: [
              TextButton(
                onPressed: () => context.read<GameCubit>().createGame(),
                child: const Text('Create Game'),
              ),
              ElevatedButton(
                onPressed: () => context
                    .read<GameCubit>()
                    .getGameByGameId(controller.text.trim()),
                child: const Text('Join Game'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
