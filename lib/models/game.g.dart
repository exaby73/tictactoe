// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      id: json['id'] as String,
      player1: json['player1'] as String,
      player2: json['player2'] as String?,
      player1Ready: json['player1Ready'] as bool? ?? false,
      player2Ready: json['player2Ready'] as bool? ?? false,
      isPlayer1Turn: json['isPlayer1Turn'] as bool? ?? true,
      player1Symbol: $enumDecode(_$CellEnumMap, json['player1Symbol']),
      player2Symbol: $enumDecode(_$CellEnumMap, json['player2Symbol']),
      board: const BoardConverter().fromJson(json['board'] as String),
      status: $enumDecodeNullable(_$GameStatusEnumMap, json['status']) ??
          GameStatus.waiting,
      result: $enumDecodeNullable(_$GameResultEnumMap, json['result']) ??
          GameResult.none,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'player1': instance.player1,
      'player2': instance.player2,
      'player1Ready': instance.player1Ready,
      'player2Ready': instance.player2Ready,
      'isPlayer1Turn': instance.isPlayer1Turn,
      'player1Symbol': _$CellEnumMap[instance.player1Symbol]!,
      'player2Symbol': _$CellEnumMap[instance.player2Symbol]!,
      'board': const BoardConverter().toJson(instance.board),
      'status': _$GameStatusEnumMap[instance.status]!,
      'result': _$GameResultEnumMap[instance.result]!,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };

const _$CellEnumMap = {
  Cell.empty: 'empty',
  Cell.X: 'X',
  Cell.O: 'O',
};

const _$GameStatusEnumMap = {
  GameStatus.waiting: 'waiting',
  GameStatus.playing: 'playing',
  GameStatus.finished: 'finished',
};

const _$GameResultEnumMap = {
  GameResult.none: 'none',
  GameResult.player1: 'player1',
  GameResult.player2: 'player2',
  GameResult.draw: 'draw',
};

_$BoardImpl _$$BoardImplFromJson(Map<String, dynamic> json) => _$BoardImpl(
      cellMatrix: (json['cellMatrix'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => $enumDecode(_$CellEnumMap, e))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$BoardImplToJson(_$BoardImpl instance) =>
    <String, dynamic>{
      'cellMatrix': instance.cellMatrix
          .map((e) => e.map((e) => _$CellEnumMap[e]!).toList())
          .toList(),
    };
