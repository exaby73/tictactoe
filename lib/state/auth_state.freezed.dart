// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  DataState<User> get loginState => throw _privateConstructorUsedError;
  DataState<User> get registerState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({DataState<User> loginState, DataState<User> registerState});

  $DataStateCopyWith<User, $Res> get loginState;
  $DataStateCopyWith<User, $Res> get registerState;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginState = null,
    Object? registerState = null,
  }) {
    return _then(_value.copyWith(
      loginState: null == loginState
          ? _value.loginState
          : loginState // ignore: cast_nullable_to_non_nullable
              as DataState<User>,
      registerState: null == registerState
          ? _value.registerState
          : registerState // ignore: cast_nullable_to_non_nullable
              as DataState<User>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataStateCopyWith<User, $Res> get loginState {
    return $DataStateCopyWith<User, $Res>(_value.loginState, (value) {
      return _then(_value.copyWith(loginState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataStateCopyWith<User, $Res> get registerState {
    return $DataStateCopyWith<User, $Res>(_value.registerState, (value) {
      return _then(_value.copyWith(registerState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataState<User> loginState, DataState<User> registerState});

  @override
  $DataStateCopyWith<User, $Res> get loginState;
  @override
  $DataStateCopyWith<User, $Res> get registerState;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginState = null,
    Object? registerState = null,
  }) {
    return _then(_$AuthStateImpl(
      loginState: null == loginState
          ? _value.loginState
          : loginState // ignore: cast_nullable_to_non_nullable
              as DataState<User>,
      registerState: null == registerState
          ? _value.registerState
          : registerState // ignore: cast_nullable_to_non_nullable
              as DataState<User>,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.loginState = const DataStateInitial<User>(),
      this.registerState = const DataStateInitial<User>()});

  @override
  @JsonKey()
  final DataState<User> loginState;
  @override
  @JsonKey()
  final DataState<User> registerState;

  @override
  String toString() {
    return 'AuthState(loginState: $loginState, registerState: $registerState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.loginState, loginState) ||
                other.loginState == loginState) &&
            (identical(other.registerState, registerState) ||
                other.registerState == registerState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginState, registerState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final DataState<User> loginState,
      final DataState<User> registerState}) = _$AuthStateImpl;

  @override
  DataState<User> get loginState;
  @override
  DataState<User> get registerState;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
