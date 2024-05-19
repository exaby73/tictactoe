import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/common/converters/timestamp_converter.dart';

part 'game.freezed.dart';
part 'game.g.dart';

enum GameStatus { waiting, playing, finished }

enum GameResult { none, player1, player2, draw }

enum Cell { empty, X, O }

@freezed
class Game with _$Game {
  const factory Game({
    required String id,
    required String player1,
    required String player2,
    required bool player1Ready,
    required bool player2Ready,
    required bool isPlayer1Turn,
    @Default([]) List<List<Cell>> board,
    @Default(GameResult.none) GameResult result,
    @TimestampConverter() required DateTime createdAt,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
