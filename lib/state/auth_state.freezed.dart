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
  AuthDataState get loginState => throw _privateConstructorUsedError;
  AuthDataState get registerState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AuthDataState loginState, AuthDataState registerState});

  $AuthDataStateCopyWith<$Res> get loginState;
  $AuthDataStateCopyWith<$Res> get registerState;
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
              as AuthDataState,
      registerState: null == registerState
          ? _value.registerState
          : registerState // ignore: cast_nullable_to_non_nullable
              as AuthDataState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthDataStateCopyWith<$Res> get loginState {
    return $AuthDataStateCopyWith<$Res>(_value.loginState, (value) {
      return _then(_value.copyWith(loginState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthDataStateCopyWith<$Res> get registerState {
    return $AuthDataStateCopyWith<$Res>(_value.registerState, (value) {
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
  $Res call({AuthDataState loginState, AuthDataState registerState});

  @override
  $AuthDataStateCopyWith<$Res> get loginState;
  @override
  $AuthDataStateCopyWith<$Res> get registerState;
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
              as AuthDataState,
      registerState: null == registerState
          ? _value.registerState
          : registerState // ignore: cast_nullable_to_non_nullable
              as AuthDataState,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.loginState = const AuthDataState.initial(),
      this.registerState = const AuthDataState.initial()});

  @override
  @JsonKey()
  final AuthDataState loginState;
  @override
  @JsonKey()
  final AuthDataState registerState;

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
      {final AuthDataState loginState,
      final AuthDataState registerState}) = _$AuthStateImpl;

  @override
  AuthDataState get loginState;
  @override
  AuthDataState get registerState;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User userCredential) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User userCredential)? success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User userCredential)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthDataInitial value) initial,
    required TResult Function(AuthDataLoading value) loading,
    required TResult Function(AuthDataSuccess value) success,
    required TResult Function(AuthDataFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthDataInitial value)? initial,
    TResult? Function(AuthDataLoading value)? loading,
    TResult? Function(AuthDataSuccess value)? success,
    TResult? Function(AuthDataFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthDataInitial value)? initial,
    TResult Function(AuthDataLoading value)? loading,
    TResult Function(AuthDataSuccess value)? success,
    TResult Function(AuthDataFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDataStateCopyWith<$Res> {
  factory $AuthDataStateCopyWith(
          AuthDataState value, $Res Function(AuthDataState) then) =
      _$AuthDataStateCopyWithImpl<$Res, AuthDataState>;
}

/// @nodoc
class _$AuthDataStateCopyWithImpl<$Res, $Val extends AuthDataState>
    implements $AuthDataStateCopyWith<$Res> {
  _$AuthDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthDataInitialImplCopyWith<$Res> {
  factory _$$AuthDataInitialImplCopyWith(_$AuthDataInitialImpl value,
          $Res Function(_$AuthDataInitialImpl) then) =
      __$$AuthDataInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthDataInitialImplCopyWithImpl<$Res>
    extends _$AuthDataStateCopyWithImpl<$Res, _$AuthDataInitialImpl>
    implements _$$AuthDataInitialImplCopyWith<$Res> {
  __$$AuthDataInitialImplCopyWithImpl(
      _$AuthDataInitialImpl _value, $Res Function(_$AuthDataInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthDataInitialImpl implements AuthDataInitial {
  const _$AuthDataInitialImpl();

  @override
  String toString() {
    return 'AuthDataState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthDataInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User userCredential) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User userCredential)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User userCredential)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthDataInitial value) initial,
    required TResult Function(AuthDataLoading value) loading,
    required TResult Function(AuthDataSuccess value) success,
    required TResult Function(AuthDataFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthDataInitial value)? initial,
    TResult? Function(AuthDataLoading value)? loading,
    TResult? Function(AuthDataSuccess value)? success,
    TResult? Function(AuthDataFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthDataInitial value)? initial,
    TResult Function(AuthDataLoading value)? loading,
    TResult Function(AuthDataSuccess value)? success,
    TResult Function(AuthDataFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthDataInitial implements AuthDataState {
  const factory AuthDataInitial() = _$AuthDataInitialImpl;
}

/// @nodoc
abstract class _$$AuthDataLoadingImplCopyWith<$Res> {
  factory _$$AuthDataLoadingImplCopyWith(_$AuthDataLoadingImpl value,
          $Res Function(_$AuthDataLoadingImpl) then) =
      __$$AuthDataLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthDataLoadingImplCopyWithImpl<$Res>
    extends _$AuthDataStateCopyWithImpl<$Res, _$AuthDataLoadingImpl>
    implements _$$AuthDataLoadingImplCopyWith<$Res> {
  __$$AuthDataLoadingImplCopyWithImpl(
      _$AuthDataLoadingImpl _value, $Res Function(_$AuthDataLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthDataLoadingImpl implements AuthDataLoading {
  const _$AuthDataLoadingImpl();

  @override
  String toString() {
    return 'AuthDataState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthDataLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User userCredential) success,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User userCredential)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User userCredential)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthDataInitial value) initial,
    required TResult Function(AuthDataLoading value) loading,
    required TResult Function(AuthDataSuccess value) success,
    required TResult Function(AuthDataFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthDataInitial value)? initial,
    TResult? Function(AuthDataLoading value)? loading,
    TResult? Function(AuthDataSuccess value)? success,
    TResult? Function(AuthDataFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthDataInitial value)? initial,
    TResult Function(AuthDataLoading value)? loading,
    TResult Function(AuthDataSuccess value)? success,
    TResult Function(AuthDataFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthDataLoading implements AuthDataState {
  const factory AuthDataLoading() = _$AuthDataLoadingImpl;
}

/// @nodoc
abstract class _$$AuthDataSuccessImplCopyWith<$Res> {
  factory _$$AuthDataSuccessImplCopyWith(_$AuthDataSuccessImpl value,
          $Res Function(_$AuthDataSuccessImpl) then) =
      __$$AuthDataSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User userCredential});
}

/// @nodoc
class __$$AuthDataSuccessImplCopyWithImpl<$Res>
    extends _$AuthDataStateCopyWithImpl<$Res, _$AuthDataSuccessImpl>
    implements _$$AuthDataSuccessImplCopyWith<$Res> {
  __$$AuthDataSuccessImplCopyWithImpl(
      _$AuthDataSuccessImpl _value, $Res Function(_$AuthDataSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCredential = null,
  }) {
    return _then(_$AuthDataSuccessImpl(
      null == userCredential
          ? _value.userCredential
          : userCredential // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthDataSuccessImpl implements AuthDataSuccess {
  const _$AuthDataSuccessImpl(this.userCredential);

  @override
  final User userCredential;

  @override
  String toString() {
    return 'AuthDataState.success(userCredential: $userCredential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthDataSuccessImpl &&
            (identical(other.userCredential, userCredential) ||
                other.userCredential == userCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userCredential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthDataSuccessImplCopyWith<_$AuthDataSuccessImpl> get copyWith =>
      __$$AuthDataSuccessImplCopyWithImpl<_$AuthDataSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User userCredential) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(userCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User userCredential)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return success?.call(userCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User userCredential)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userCredential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthDataInitial value) initial,
    required TResult Function(AuthDataLoading value) loading,
    required TResult Function(AuthDataSuccess value) success,
    required TResult Function(AuthDataFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthDataInitial value)? initial,
    TResult? Function(AuthDataLoading value)? loading,
    TResult? Function(AuthDataSuccess value)? success,
    TResult? Function(AuthDataFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthDataInitial value)? initial,
    TResult Function(AuthDataLoading value)? loading,
    TResult Function(AuthDataSuccess value)? success,
    TResult Function(AuthDataFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthDataSuccess implements AuthDataState {
  const factory AuthDataSuccess(final User userCredential) =
      _$AuthDataSuccessImpl;

  User get userCredential;
  @JsonKey(ignore: true)
  _$$AuthDataSuccessImplCopyWith<_$AuthDataSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthDataFailureImplCopyWith<$Res> {
  factory _$$AuthDataFailureImplCopyWith(_$AuthDataFailureImpl value,
          $Res Function(_$AuthDataFailureImpl) then) =
      __$$AuthDataFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$AuthDataFailureImplCopyWithImpl<$Res>
    extends _$AuthDataStateCopyWithImpl<$Res, _$AuthDataFailureImpl>
    implements _$$AuthDataFailureImplCopyWith<$Res> {
  __$$AuthDataFailureImplCopyWithImpl(
      _$AuthDataFailureImpl _value, $Res Function(_$AuthDataFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$AuthDataFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$AuthDataFailureImpl implements AuthDataFailure {
  const _$AuthDataFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthDataState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthDataFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthDataFailureImplCopyWith<_$AuthDataFailureImpl> get copyWith =>
      __$$AuthDataFailureImplCopyWithImpl<_$AuthDataFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User userCredential) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User userCredential)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User userCredential)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthDataInitial value) initial,
    required TResult Function(AuthDataLoading value) loading,
    required TResult Function(AuthDataSuccess value) success,
    required TResult Function(AuthDataFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthDataInitial value)? initial,
    TResult? Function(AuthDataLoading value)? loading,
    TResult? Function(AuthDataSuccess value)? success,
    TResult? Function(AuthDataFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthDataInitial value)? initial,
    TResult Function(AuthDataLoading value)? loading,
    TResult Function(AuthDataSuccess value)? success,
    TResult Function(AuthDataFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthDataFailure implements AuthDataState {
  const factory AuthDataFailure(final Failure failure) = _$AuthDataFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$AuthDataFailureImplCopyWith<_$AuthDataFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
