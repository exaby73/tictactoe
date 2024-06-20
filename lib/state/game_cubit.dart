import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/common/data_state.dart';
import 'package:tictactoe/common/failure.dart';
import 'package:tictactoe/models/game.dart';
import 'package:tictactoe/services/game_service.dart';
import 'package:tictactoe/state/game_state.dart';

@singleton
class GameCubit extends Cubit<GameState> {
  GameCubit(this._gameService) : super(const GameState());

  final GameService _gameService;

  Future<void> getGames() async {
    if (state.getGamesState is! DataStateSuccess) {
      emit(state.copyWith(getGamesState: const DataState.loading()));
    }

    final result = await _gameService.getGames();
    final newState = result.fold(
      (failure) => state.copyWith(getGamesState: DataState.failure(failure)),
      (games) => state.copyWith(getGamesState: DataState.success(games)),
    );

    emit(newState);
  }

  Future<void> createGame() async {
    emit(state.copyWith(createGameState: const DataState.loading()));

    final result = await _gameService.createGame();
    final newState = result.fold(
      (failure) => state.copyWith(createGameState: DataState.failure(failure)),
      (game) => state.copyWith(createGameState: DataState.success(game)),
    );

    emit(newState);
  }

  void resetCreateGameState() {
    emit(state.copyWith(createGameState: const DataState.initial()));
  }

  Future<DataState<Stream<Game>>> getGameByGameId(String gameId) async {
    emit(state.copyWith(getGameByGameIdState: const DataState.loading()));

    final result = await _gameService.getGameByGameId(gameId);
    final newState = result.fold(
      (failure) =>
          state.copyWith(getGameByGameIdState: DataState.failure(failure)),
      (game) => state.copyWith(getGameByGameIdState: DataState.success(game)),
    );

    emit(newState);

    return newState.getGameByGameIdState;
  }

  void resetGetGameByGameIdState() {
    emit(state.copyWith(getGameByGameIdState: const DataState.initial()));
  }

  Future<DataState<Unit>> updateGame(Game game) async {
    emit(state.copyWith(updateGameState: const DataState.loading()));

    final result = await _gameService.updateGame(game);
    final newState = result.fold(
      (failure) => state.copyWith(updateGameState: DataState.failure(failure)),
      (game) => state.copyWith(updateGameState: const DataState.success(unit)),
    );

    emit(newState);

    return newState.updateGameState!;
  }

  void resetUpdateGameState() {
    emit(state.copyWith(updateGameState: null));
  }
}
