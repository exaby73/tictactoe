// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      id: json['id'] as String,
      player1: json['player1'] as String,
      player2: json['player2'] as String,
      player1Ready: json['player1Ready'] as bool,
      player2Ready: json['player2Ready'] as bool,
      isPlayer1Turn: json['isPlayer1Turn'] as bool,
      board: (json['board'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => $enumDecode(_$CellEnumMap, e))
                  .toList())
              .toList() ??
          const [],
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
      'board': instance.board
          .map((e) => e.map((e) => _$CellEnumMap[e]!).toList())
          .toList(),
      'result': _$GameResultEnumMap[instance.result]!,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };

const _$CellEnumMap = {
  Cell.empty: 'empty',
  Cell.X: 'X',
  Cell.O: 'O',
};

const _$GameResultEnumMap = {
  GameResult.none: 'none',
  GameResult.player1: 'player1',
  GameResult.player2: 'player2',
  GameResult.draw: 'draw',
};
