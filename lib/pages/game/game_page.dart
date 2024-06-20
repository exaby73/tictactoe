import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tictactoe/common/data_state.dart';
import 'package:tictactoe/config/di.dart';
import 'package:tictactoe/models/game.dart';
import 'package:tictactoe/state/game_cubit.dart';

void _handleAfterUpdate(BuildContext context, DataState<Unit> data) {
  switch (data) {
    case DataStateFailure(failure: final f):
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(f.messageOrDefault),
          ),
        );
    case _:
  }
}

@RoutePage()
class GamePage extends HookWidget {
  const GamePage({super.key, required this.gameStream});

  final Stream<Game> gameStream;

  @override
  Widget build(BuildContext context) {
    final maybeGame = useStream(gameStream);
    if (!maybeGame.hasData) {
      return Scaffold(
        appBar: AppBar(title: const Text('Loading...')),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }

    final game = maybeGame.data!;
    final uid = di<FirebaseAuth>().currentUser!.uid;
    final Game(:player1, :player1Ready, :player2Ready) = game;
    final isPlayer1 = player1 == uid;
    final isPlayer2 = !isPlayer1;

    useEffect(
      () {
        // Logic for player 1
        if (isPlayer2 || game.result != GameResult.none) return;

        if (player2Ready && !player1Ready) {
          context
              .read<GameCubit>()
              .updateGame(
                game.copyWith(player1Ready: true),
              )
              .then((data) => _handleAfterUpdate(context, data));
        }

        return null;
      },
      [game],
    );

    useEffect(
      () {
        // Logic for player 2
        if (isPlayer1 || game.result != GameResult.none) return;

        if (!player2Ready) {
          context
              .read<GameCubit>()
              .updateGame(
                game.copyWith(
                  player2: uid,
                  player2Ready: true,
                ),
              )
              .then((data) => _handleAfterUpdate(context, data));
        }

        if (player1Ready && player2Ready) {
          context
              .read<GameCubit>()
              .updateGame(
                game.copyWith(status: GameStatus.playing),
              )
              .then((data) => _handleAfterUpdate(context, data));
        }

        return null;
      },
      [game],
    );

    useEffect(
      () {
        return context.read<GameCubit>().resetUpdateGameState;
      },
      const [],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          isPlayer1 ? 'You are player 1' : 'You are player 2',
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await Clipboard.setData(ClipboardData(text: game.id));
            },
            icon: const Icon(Icons.copy),
          ),
          IconButton(
            onPressed: () {
              context
                  .read<GameCubit>()
                  .updateGame(
                    game.copyWith(
                      result:
                          isPlayer2 ? GameResult.player1 : GameResult.player2,
                      status: GameStatus.finished,
                    ),
                  )
                  .then((data) => _handleAfterUpdate(context, data));
            },
            tooltip: 'Leave game',
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: switch (game.status) {
        GameStatus.waiting => Center(
            child: Text(
              isPlayer1 ? 'Waiting for opponent...' : 'Joining game...',
            ),
          ),
        GameStatus.playing || GameStatus.finished => _Game(game: game),
      },
    );
  }
}

class _Game extends HookWidget {
  const _Game({required this.game});

  final Game game;

  @override
  Widget build(BuildContext context) {
    final Game(:board, :player1, :isPlayer1Turn) = game;
    final uid = di<FirebaseAuth>().currentUser!.uid;
    final isPlayer1 = player1 == uid;

    useEffect(
      () {
        if (game.result != GameResult.none) return null;

        final result = game.checkResult();
        if (result == null) return;

        context
            .read<GameCubit>()
            .updateGame(
              game.copyWith(
                result: result,
                status: GameStatus.finished,
              ),
            )
            .then((data) => _handleAfterUpdate(context, data));

        return null;
      },
      [board],
    );

    return ListView(
      shrinkWrap: true,
      children: [
        GridView.builder(
          shrinkWrap: true,
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            final row = index ~/ 3;
            final col = index % 3;
            final cell = board.cellMatrix[row][col];

            return GestureDetector(
              onTap: () {
                if (game.status == GameStatus.finished ||
                    cell != Cell.empty ||
                    game.result != GameResult.none) {
                  return;
                }
                if (isPlayer1 && !isPlayer1Turn) return;
                if (!isPlayer1 && isPlayer1Turn) return;

                final newBoard = List.of(board.cellMatrix);
                newBoard[row][col] =
                    isPlayer1 ? game.player1Symbol : game.player2Symbol;
                context
                    .read<GameCubit>()
                    .updateGame(
                      game.copyWith(
                        board: Board(cellMatrix: newBoard),
                        isPlayer1Turn: !isPlayer1Turn,
                      ),
                    )
                    .then((data) => _handleAfterUpdate(context, data));
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Center(
                  child: Text(
                    switch (cell) {
                      Cell.empty => '',
                      Cell.X => 'X',
                      Cell.O => 'O',
                    },
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 20),
        if (game.status == GameStatus.playing) ...[
          if (isPlayer1 && isPlayer1Turn) const _TurnText('Your turn'),
          if (isPlayer1 && !isPlayer1Turn) const _TurnText("Opponent's turn"),
          if (!isPlayer1 && isPlayer1Turn) const _TurnText("Opponent's turn"),
          if (!isPlayer1 && !isPlayer1Turn) const _TurnText('Your turn'),
        ],
        if (game.result != GameResult.none) ...[
          const SizedBox(height: 20),
          Center(
            child: _TurnText(
              switch (game.result) {
                GameResult.player1 => isPlayer1 ? 'You win!' : 'Player 1 wins!',
                GameResult.player2 => isPlayer1 ? 'Player 2 wins!' : 'You win!',
                GameResult.draw => 'It is a draw!',
                GameResult.none => '',
              },
            ),
          ),
        ],
      ],
    );
  }
}

class _TurnText extends StatelessWidget {
  const _TurnText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: Theme.of(context).textTheme.displaySmall,
      ),
    );
  }
}
