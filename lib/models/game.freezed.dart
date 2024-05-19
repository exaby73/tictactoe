// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  String get id => throw _privateConstructorUsedError;
  String get player1 => throw _privateConstructorUsedError;
  String get player2 => throw _privateConstructorUsedError;
  bool get player1Ready => throw _privateConstructorUsedError;
  bool get player2Ready => throw _privateConstructorUsedError;
  bool get isPlayer1Turn => throw _privateConstructorUsedError;
  List<List<Cell>> get board => throw _privateConstructorUsedError;
  GameResult get result => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {String id,
      String player1,
      String player2,
      bool player1Ready,
      bool player2Ready,
      bool isPlayer1Turn,
      List<List<Cell>> board,
      GameResult result,
      @TimestampConverter() DateTime createdAt});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? player1 = null,
    Object? player2 = null,
    Object? player1Ready = null,
    Object? player2Ready = null,
    Object? isPlayer1Turn = null,
    Object? board = null,
    Object? result = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      player1: null == player1
          ? _value.player1
          : player1 // ignore: cast_nullable_to_non_nullable
              as String,
      player2: null == player2
          ? _value.player2
          : player2 // ignore: cast_nullable_to_non_nullable
              as String,
      player1Ready: null == player1Ready
          ? _value.player1Ready
          : player1Ready // ignore: cast_nullable_to_non_nullable
              as bool,
      player2Ready: null == player2Ready
          ? _value.player2Ready
          : player2Ready // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlayer1Turn: null == isPlayer1Turn
          ? _value.isPlayer1Turn
          : isPlayer1Turn // ignore: cast_nullable_to_non_nullable
              as bool,
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as List<List<Cell>>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as GameResult,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String player1,
      String player2,
      bool player1Ready,
      bool player2Ready,
      bool isPlayer1Turn,
      List<List<Cell>> board,
      GameResult result,
      @TimestampConverter() DateTime createdAt});
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? player1 = null,
    Object? player2 = null,
    Object? player1Ready = null,
    Object? player2Ready = null,
    Object? isPlayer1Turn = null,
    Object? board = null,
    Object? result = null,
    Object? createdAt = null,
  }) {
    return _then(_$GameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      player1: null == player1
          ? _value.player1
          : player1 // ignore: cast_nullable_to_non_nullable
              as String,
      player2: null == player2
          ? _value.player2
          : player2 // ignore: cast_nullable_to_non_nullable
              as String,
      player1Ready: null == player1Ready
          ? _value.player1Ready
          : player1Ready // ignore: cast_nullable_to_non_nullable
              as bool,
      player2Ready: null == player2Ready
          ? _value.player2Ready
          : player2Ready // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlayer1Turn: null == isPlayer1Turn
          ? _value.isPlayer1Turn
          : isPlayer1Turn // ignore: cast_nullable_to_non_nullable
              as bool,
      board: null == board
          ? _value._board
          : board // ignore: cast_nullable_to_non_nullable
              as List<List<Cell>>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as GameResult,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl implements _Game {
  const _$GameImpl(
      {required this.id,
      required this.player1,
      required this.player2,
      required this.player1Ready,
      required this.player2Ready,
      required this.isPlayer1Turn,
      final List<List<Cell>> board = const [],
      this.result = GameResult.none,
      @TimestampConverter() required this.createdAt})
      : _board = board;

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  final String id;
  @override
  final String player1;
  @override
  final String player2;
  @override
  final bool player1Ready;
  @override
  final bool player2Ready;
  @override
  final bool isPlayer1Turn;
  final List<List<Cell>> _board;
  @override
  @JsonKey()
  List<List<Cell>> get board {
    if (_board is EqualUnmodifiableListView) return _board;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_board);
  }

  @override
  @JsonKey()
  final GameResult result;
  @override
  @TimestampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'Game(id: $id, player1: $player1, player2: $player2, player1Ready: $player1Ready, player2Ready: $player2Ready, isPlayer1Turn: $isPlayer1Turn, board: $board, result: $result, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.player1, player1) || other.player1 == player1) &&
            (identical(other.player2, player2) || other.player2 == player2) &&
            (identical(other.player1Ready, player1Ready) ||
                other.player1Ready == player1Ready) &&
            (identical(other.player2Ready, player2Ready) ||
                other.player2Ready == player2Ready) &&
            (identical(other.isPlayer1Turn, isPlayer1Turn) ||
                other.isPlayer1Turn == isPlayer1Turn) &&
            const DeepCollectionEquality().equals(other._board, _board) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      player1,
      player2,
      player1Ready,
      player2Ready,
      isPlayer1Turn,
      const DeepCollectionEquality().hash(_board),
      result,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameImplToJson(
      this,
    );
  }
}

abstract class _Game implements Game {
  const factory _Game(
      {required final String id,
      required final String player1,
      required final String player2,
      required final bool player1Ready,
      required final bool player2Ready,
      required final bool isPlayer1Turn,
      final List<List<Cell>> board,
      final GameResult result,
      @TimestampConverter() required final DateTime createdAt}) = _$GameImpl;

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  String get id;
  @override
  String get player1;
  @override
  String get player2;
  @override
  bool get player1Ready;
  @override
  bool get player2Ready;
  @override
  bool get isPlayer1Turn;
  @override
  List<List<Cell>> get board;
  @override
  GameResult get result;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
