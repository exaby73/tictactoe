import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/common/data_state.dart';
import 'package:tictactoe/models/game.dart';

part 'game_state.freezed.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    @Default(DataState<List<Game>>.loading())
    DataState<List<Game>> getGamesState,
  }) = _GameState;
}
