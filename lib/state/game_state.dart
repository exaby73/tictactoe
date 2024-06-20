import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/common/data_state.dart';
import 'package:tictactoe/models/game.dart';

part 'game_state.freezed.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    @Default(DataStateInitial<List<Game>>())
    DataState<List<Game>> getGamesState,
    @Default(DataStateInitial<Game>()) DataState<Game> createGameState,
    @Default(DataStateInitial<Stream<Game>>())
    DataState<Stream<Game>> getGameByGameIdState,
    DataState<Unit>? updateGameState,
  }) = _GameState;
}
