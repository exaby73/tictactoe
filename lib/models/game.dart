import 'dart:convert';

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
  @Assert('player1Symbol != Cell.empty', 'Player 1 symbol cannot be empty')
  @Assert('player2Symbol != Cell.empty', 'Player 2 symbol cannot be empty')
  @Assert(
    'player1Symbol != player2Symbol',
    'Player 1 and Player 2 symbols cannot be the same',
  )
  const factory Game({
    required String id,
    required String player1,
    String? player2,
    @Default(false) bool player1Ready,
    @Default(false) bool player2Ready,
    @Default(true) bool isPlayer1Turn,
    required Cell player1Symbol,
    required Cell player2Symbol,
    @BoardConverter() required Board board,
    @Default(GameStatus.waiting) GameStatus status,
    @Default(GameResult.none) GameResult result,
    @TimestampConverter() required DateTime createdAt,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  factory Game.fromDoc(DocumentSnapshot<Map<String, dynamic>> doc) =>
      Game.fromJson({'id': doc.id, ...doc.data()!});

  const Game._();

  GameResult? checkResult() {
    for (var i = 0; i < 3; i++) {
      if (board.cellMatrix[i][0] != Cell.empty &&
          board.cellMatrix[i][0] == board.cellMatrix[i][1] &&
          board.cellMatrix[i][1] == board.cellMatrix[i][2]) {
        return board.cellMatrix[i][0] == player1Symbol
            ? GameResult.player1
            : GameResult.player2;
      }
      if (board.cellMatrix[0][i] != Cell.empty &&
          board.cellMatrix[0][i] == board.cellMatrix[1][i] &&
          board.cellMatrix[1][i] == board.cellMatrix[2][i]) {
        return board.cellMatrix[0][i] == player1Symbol
            ? GameResult.player1
            : GameResult.player2;
      }
    }

    if (board.cellMatrix[0][0] != Cell.empty &&
        board.cellMatrix[0][0] == board.cellMatrix[1][1] &&
        board.cellMatrix[1][1] == board.cellMatrix[2][2]) {
      return board.cellMatrix[0][0] == player1Symbol
          ? GameResult.player1
          : GameResult.player2;
    }

    if (board.cellMatrix[0][2] != Cell.empty &&
        board.cellMatrix[0][2] == board.cellMatrix[1][1] &&
        board.cellMatrix[1][1] == board.cellMatrix[2][0]) {
      return board.cellMatrix[0][2] == player1Symbol
          ? GameResult.player1
          : GameResult.player2;
    }

    if (board.cellMatrix
        .every((row) => row.every((cell) => cell != Cell.empty))) {
      return GameResult.draw;
    }

    return null;
  }
}

@freezed
class Board with _$Board {
  const factory Board({
    required List<List<Cell>> cellMatrix,
  }) = _Board;

  factory Board.fromJson(Map<String, dynamic> json) => _$BoardFromJson(json);

  const Board._();
}

class BoardConverter implements JsonConverter<Board, String> {
  const BoardConverter();

  @override
  Board fromJson(String json) {
    return Board.fromJson(jsonDecode(json) as Map<String, dynamic>);
  }

  @override
  String toJson(Board object) {
    return jsonEncode(object.toJson());
  }
}
