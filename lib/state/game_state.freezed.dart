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

  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call({DataState<List<Game>> getGamesState});

  $DataStateCopyWith<List<Game>, $Res> get getGamesState;
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
  }) {
    return _then(_value.copyWith(
      getGamesState: null == getGamesState
          ? _value.getGamesState
          : getGamesState // ignore: cast_nullable_to_non_nullable
              as DataState<List<Game>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataStateCopyWith<List<Game>, $Res> get getGamesState {
    return $DataStateCopyWith<List<Game>, $Res>(_value.getGamesState, (value) {
      return _then(_value.copyWith(getGamesState: value) as $Val);
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
  $Res call({DataState<List<Game>> getGamesState});

  @override
  $DataStateCopyWith<List<Game>, $Res> get getGamesState;
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
  }) {
    return _then(_$GameStateImpl(
      getGamesState: null == getGamesState
          ? _value.getGamesState
          : getGamesState // ignore: cast_nullable_to_non_nullable
              as DataState<List<Game>>,
    ));
  }
}

/// @nodoc

class _$GameStateImpl implements _GameState {
  const _$GameStateImpl(
      {this.getGamesState = const DataState<List<Game>>.loading()});

  @override
  @JsonKey()
  final DataState<List<Game>> getGamesState;

  @override
  String toString() {
    return 'GameState(getGamesState: $getGamesState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            (identical(other.getGamesState, getGamesState) ||
                other.getGamesState == getGamesState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getGamesState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState({final DataState<List<Game>> getGamesState}) =
      _$GameStateImpl;

  @override
  DataState<List<Game>> get getGamesState;
  @override
  @JsonKey(ignore: true)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
