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
  String? get player2 => throw _privateConstructorUsedError;
  bool get player1Ready => throw _privateConstructorUsedError;
  bool get player2Ready => throw _privateConstructorUsedError;
  bool get isPlayer1Turn => throw _privateConstructorUsedError;
  Cell get player1Symbol => throw _privateConstructorUsedError;
  Cell get player2Symbol => throw _privateConstructorUsedError;
  @BoardConverter()
  Board get board => throw _privateConstructorUsedError;
  GameStatus get status => throw _privateConstructorUsedError;
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
      String? player2,
      bool player1Ready,
      bool player2Ready,
      bool isPlayer1Turn,
      Cell player1Symbol,
      Cell player2Symbol,
      @BoardConverter() Board board,
      GameStatus status,
      GameResult result,
      @TimestampConverter() DateTime createdAt});

  $BoardCopyWith<$Res> get board;
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
    Object? player2 = freezed,
    Object? player1Ready = null,
    Object? player2Ready = null,
    Object? isPlayer1Turn = null,
    Object? player1Symbol = null,
    Object? player2Symbol = null,
    Object? board = null,
    Object? status = null,
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
      player2: freezed == player2
          ? _value.player2
          : player2 // ignore: cast_nullable_to_non_nullable
              as String?,
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
      player1Symbol: null == player1Symbol
          ? _value.player1Symbol
          : player1Symbol // ignore: cast_nullable_to_non_nullable
              as Cell,
      player2Symbol: null == player2Symbol
          ? _value.player2Symbol
          : player2Symbol // ignore: cast_nullable_to_non_nullable
              as Cell,
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as Board,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameStatus,
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

  @override
  @pragma('vm:prefer-inline')
  $BoardCopyWith<$Res> get board {
    return $BoardCopyWith<$Res>(_value.board, (value) {
      return _then(_value.copyWith(board: value) as $Val);
    });
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
      String? player2,
      bool player1Ready,
      bool player2Ready,
      bool isPlayer1Turn,
      Cell player1Symbol,
      Cell player2Symbol,
      @BoardConverter() Board board,
      GameStatus status,
      GameResult result,
      @TimestampConverter() DateTime createdAt});

  @override
  $BoardCopyWith<$Res> get board;
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
    Object? player2 = freezed,
    Object? player1Ready = null,
    Object? player2Ready = null,
    Object? isPlayer1Turn = null,
    Object? player1Symbol = null,
    Object? player2Symbol = null,
    Object? board = null,
    Object? status = null,
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
      player2: freezed == player2
          ? _value.player2
          : player2 // ignore: cast_nullable_to_non_nullable
              as String?,
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
      player1Symbol: null == player1Symbol
          ? _value.player1Symbol
          : player1Symbol // ignore: cast_nullable_to_non_nullable
              as Cell,
      player2Symbol: null == player2Symbol
          ? _value.player2Symbol
          : player2Symbol // ignore: cast_nullable_to_non_nullable
              as Cell,
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as Board,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameStatus,
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
class _$GameImpl extends _Game {
  const _$GameImpl(
      {required this.id,
      required this.player1,
      this.player2,
      this.player1Ready = false,
      this.player2Ready = false,
      this.isPlayer1Turn = true,
      required this.player1Symbol,
      required this.player2Symbol,
      @BoardConverter() required this.board,
      this.status = GameStatus.waiting,
      this.result = GameResult.none,
      @TimestampConverter() required this.createdAt})
      : assert(player1Symbol != Cell.empty, 'Player 1 symbol cannot be empty'),
        assert(player2Symbol != Cell.empty, 'Player 2 symbol cannot be empty'),
        assert(player1Symbol != player2Symbol,
            'Player 1 and Player 2 symbols cannot be the same'),
        super._();

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  final String id;
  @override
  final String player1;
  @override
  final String? player2;
  @override
  @JsonKey()
  final bool player1Ready;
  @override
  @JsonKey()
  final bool player2Ready;
  @override
  @JsonKey()
  final bool isPlayer1Turn;
  @override
  final Cell player1Symbol;
  @override
  final Cell player2Symbol;
  @override
  @BoardConverter()
  final Board board;
  @override
  @JsonKey()
  final GameStatus status;
  @override
  @JsonKey()
  final GameResult result;
  @override
  @TimestampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'Game(id: $id, player1: $player1, player2: $player2, player1Ready: $player1Ready, player2Ready: $player2Ready, isPlayer1Turn: $isPlayer1Turn, player1Symbol: $player1Symbol, player2Symbol: $player2Symbol, board: $board, status: $status, result: $result, createdAt: $createdAt)';
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
            (identical(other.player1Symbol, player1Symbol) ||
                other.player1Symbol == player1Symbol) &&
            (identical(other.player2Symbol, player2Symbol) ||
                other.player2Symbol == player2Symbol) &&
            (identical(other.board, board) || other.board == board) &&
            (identical(other.status, status) || other.status == status) &&
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
      player1Symbol,
      player2Symbol,
      board,
      status,
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

abstract class _Game extends Game {
  const factory _Game(
      {required final String id,
      required final String player1,
      final String? player2,
      final bool player1Ready,
      final bool player2Ready,
      final bool isPlayer1Turn,
      required final Cell player1Symbol,
      required final Cell player2Symbol,
      @BoardConverter() required final Board board,
      final GameStatus status,
      final GameResult result,
      @TimestampConverter() required final DateTime createdAt}) = _$GameImpl;
  const _Game._() : super._();

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  String get id;
  @override
  String get player1;
  @override
  String? get player2;
  @override
  bool get player1Ready;
  @override
  bool get player2Ready;
  @override
  bool get isPlayer1Turn;
  @override
  Cell get player1Symbol;
  @override
  Cell get player2Symbol;
  @override
  @BoardConverter()
  Board get board;
  @override
  GameStatus get status;
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

Board _$BoardFromJson(Map<String, dynamic> json) {
  return _Board.fromJson(json);
}

/// @nodoc
mixin _$Board {
  List<List<Cell>> get cellMatrix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardCopyWith<Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardCopyWith<$Res> {
  factory $BoardCopyWith(Board value, $Res Function(Board) then) =
      _$BoardCopyWithImpl<$Res, Board>;
  @useResult
  $Res call({List<List<Cell>> cellMatrix});
}

/// @nodoc
class _$BoardCopyWithImpl<$Res, $Val extends Board>
    implements $BoardCopyWith<$Res> {
  _$BoardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cellMatrix = null,
  }) {
    return _then(_value.copyWith(
      cellMatrix: null == cellMatrix
          ? _value.cellMatrix
          : cellMatrix // ignore: cast_nullable_to_non_nullable
              as List<List<Cell>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardImplCopyWith<$Res> implements $BoardCopyWith<$Res> {
  factory _$$BoardImplCopyWith(
          _$BoardImpl value, $Res Function(_$BoardImpl) then) =
      __$$BoardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<Cell>> cellMatrix});
}

/// @nodoc
class __$$BoardImplCopyWithImpl<$Res>
    extends _$BoardCopyWithImpl<$Res, _$BoardImpl>
    implements _$$BoardImplCopyWith<$Res> {
  __$$BoardImplCopyWithImpl(
      _$BoardImpl _value, $Res Function(_$BoardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cellMatrix = null,
  }) {
    return _then(_$BoardImpl(
      cellMatrix: null == cellMatrix
          ? _value._cellMatrix
          : cellMatrix // ignore: cast_nullable_to_non_nullable
              as List<List<Cell>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoardImpl extends _Board {
  const _$BoardImpl({required final List<List<Cell>> cellMatrix})
      : _cellMatrix = cellMatrix,
        super._();

  factory _$BoardImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoardImplFromJson(json);

  final List<List<Cell>> _cellMatrix;
  @override
  List<List<Cell>> get cellMatrix {
    if (_cellMatrix is EqualUnmodifiableListView) return _cellMatrix;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cellMatrix);
  }

  @override
  String toString() {
    return 'Board(cellMatrix: $cellMatrix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardImpl &&
            const DeepCollectionEquality()
                .equals(other._cellMatrix, _cellMatrix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cellMatrix));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardImplCopyWith<_$BoardImpl> get copyWith =>
      __$$BoardImplCopyWithImpl<_$BoardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoardImplToJson(
      this,
    );
  }
}

abstract class _Board extends Board {
  const factory _Board({required final List<List<Cell>> cellMatrix}) =
      _$BoardImpl;
  const _Board._() : super._();

  factory _Board.fromJson(Map<String, dynamic> json) = _$BoardImpl.fromJson;

  @override
  List<List<Cell>> get cellMatrix;
  @override
  @JsonKey(ignore: true)
  _$$BoardImplCopyWith<_$BoardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
