import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/common/data_state.dart';
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
}
