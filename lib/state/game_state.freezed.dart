// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameState {
  DataState<List<Game>> get getGamesState => throw _privateConstructorUsedError;
  DataState<Game> get createGameState => throw _privateConstructorUsedError;
  DataState<Stream<Game>> get getGameByGameIdState =>
      throw _privateConstructorUsedError;
  DataState<Unit>? get updateGameState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call(
      {DataState<List<Game>> getGamesState,
      DataState<Game> createGameState,
      DataState<Stream<Game>> getGameByGameIdState,
      DataState<Unit>? updateGameState});

  $DataStateCopyWith<List<Game>, $Res> get getGamesState;
  $DataStateCopyWith<Game, $Res> get createGameState;
  $DataStateCopyWith<Stream<Game>, $Res> get getGameByGameIdState;
  $DataStateCopyWith<Unit, $Res>? get updateGameState;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getGamesState = null,
    Object? createGameState = null,
    Object? getGameByGameIdState = null,
    Object? updateGameState = freezed,
  }) {
    return _then(_value.copyWith(
      getGamesState: null == getGamesState
          ? _value.getGamesState
          : getGamesState // ignore: cast_nullable_to_non_nullable
              as DataState<List<Game>>,
      createGameState: null == createGameState
          ? _value.createGameState
          : createGameState // ignore: cast_nullable_to_non_nullable
              as DataState<Game>,
      getGameByGameIdState: null == getGameByGameIdState
          ? _value.getGameByGameIdState
          : getGameByGameIdState // ignore: cast_nullable_to_non_nullable
              as DataState<Stream<Game>>,
      updateGameState: freezed == updateGameState
          ? _value.updateGameState
          : updateGameState // ignore: cast_nullable_to_non_nullable
              as DataState<Unit>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataStateCopyWith<List<Game>, $Res> get getGamesState {
    return $DataStateCopyWith<List<Game>, $Res>(_value.getGamesState, (value) {
      return _then(_value.copyWith(getGamesState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataStateCopyWith<Game, $Res> get createGameState {
    return $DataStateCopyWith<Game, $Res>(_value.createGameState, (value) {
      return _then(_value.copyWith(createGameState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataStateCopyWith<Stream<Game>, $Res> get getGameByGameIdState {
    return $DataStateCopyWith<Stream<Game>, $Res>(_value.getGameByGameIdState,
        (value) {
      return _then(_value.copyWith(getGameByGameIdState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataStateCopyWith<Unit, $Res>? get updateGameState {
    if (_value.updateGameState == null) {
      return null;
    }

    return $DataStateCopyWith<Unit, $Res>(_value.updateGameState!, (value) {
      return _then(_value.copyWith(updateGameState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
          _$GameStateImpl value, $Res Function(_$GameStateImpl) then) =
      __$$GameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataState<List<Game>> getGamesState,
      DataState<Game> createGameState,
      DataState<Stream<Game>> getGameByGameIdState,
      DataState<Unit>? updateGameState});

  @override
  $DataStateCopyWith<List<Game>, $Res> get getGamesState;
  @override
  $DataStateCopyWith<Game, $Res> get createGameState;
  @override
  $DataStateCopyWith<Stream<Game>, $Res> get getGameByGameIdState;
  @override
  $DataStateCopyWith<Unit, $Res>? get updateGameState;
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
      _$GameStateImpl _value, $Res Function(_$GameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getGamesState = null,
    Object? createGameState = null,
    Object? getGameByGameIdState = null,
    Object? updateGameState = freezed,
  }) {
    return _then(_$GameStateImpl(
      getGamesState: null == getGamesState
          ? _value.getGamesState
          : getGamesState // ignore: cast_nullable_to_non_nullable
              as DataState<List<Game>>,
      createGameState: null == createGameState
          ? _value.createGameState
          : createGameState // ignore: cast_nullable_to_non_nullable
              as DataState<Game>,
      getGameByGameIdState: null == getGameByGameIdState
          ? _value.getGameByGameIdState
          : getGameByGameIdState // ignore: cast_nullable_to_non_nullable
              as DataState<Stream<Game>>,
      updateGameState: freezed == updateGameState
          ? _value.updateGameState
          : updateGameState // ignore: cast_nullable_to_non_nullable
              as DataState<Unit>?,
    ));
  }
}

/// @nodoc

class _$GameStateImpl implements _GameState {
  const _$GameStateImpl(
      {this.getGamesState = const DataStateInitial<List<Game>>(),
      this.createGameState = const DataStateInitial<Game>(),
      this.getGameByGameIdState = const DataStateInitial<Stream<Game>>(),
      this.updateGameState});

  @override
  @JsonKey()
  final DataState<List<Game>> getGamesState;
  @override
  @JsonKey()
  final DataState<Game> createGameState;
  @override
  @JsonKey()
  final DataState<Stream<Game>> getGameByGameIdState;
  @override
  final DataState<Unit>? updateGameState;

  @override
  String toString() {
    return 'GameState(getGamesState: $getGamesState, createGameState: $createGameState, getGameByGameIdState: $getGameByGameIdState, updateGameState: $updateGameState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            (identical(other.getGamesState, getGamesState) ||
                other.getGamesState == getGamesState) &&
            (identical(other.createGameState, createGameState) ||
                other.createGameState == createGameState) &&
            (identical(other.getGameByGameIdState, getGameByGameIdState) ||
                other.getGameByGameIdState == getGameByGameIdState) &&
            (identical(other.updateGameState, updateGameState) ||
                other.updateGameState == updateGameState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getGamesState, createGameState,
      getGameByGameIdState, updateGameState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {final DataState<List<Game>> getGamesState,
      final DataState<Game> createGameState,
      final DataState<Stream<Game>> getGameByGameIdState,
      final DataState<Unit>? updateGameState}) = _$GameStateImpl;

  @override
  DataState<List<Game>> get getGamesState;
  @override
  DataState<Game> get createGameState;
  @override
  DataState<Stream<Game>> get getGameByGameIdState;
  @override
  DataState<Unit>? get updateGameState;
  @override
  @JsonKey(ignore: true)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
