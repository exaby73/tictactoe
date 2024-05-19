// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateInitial<T> value) initial,
    required TResult Function(DataStateLoading<T> value) loading,
    required TResult Function(DataStateSuccess<T> value) success,
    required TResult Function(DataStateFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataStateInitial<T> value)? initial,
    TResult? Function(DataStateLoading<T> value)? loading,
    TResult? Function(DataStateSuccess<T> value)? success,
    TResult? Function(DataStateFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateInitial<T> value)? initial,
    TResult Function(DataStateLoading<T> value)? loading,
    TResult Function(DataStateSuccess<T> value)? success,
    TResult Function(DataStateFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<T, $Res> {
  factory $DataStateCopyWith(
          DataState<T> value, $Res Function(DataState<T>) then) =
      _$DataStateCopyWithImpl<T, $Res, DataState<T>>;
}

/// @nodoc
class _$DataStateCopyWithImpl<T, $Res, $Val extends DataState<T>>
    implements $DataStateCopyWith<T, $Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataStateInitialImplCopyWith<T, $Res> {
  factory _$$DataStateInitialImplCopyWith(_$DataStateInitialImpl<T> value,
          $Res Function(_$DataStateInitialImpl<T>) then) =
      __$$DataStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DataStateInitialImplCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res, _$DataStateInitialImpl<T>>
    implements _$$DataStateInitialImplCopyWith<T, $Res> {
  __$$DataStateInitialImplCopyWithImpl(_$DataStateInitialImpl<T> _value,
      $Res Function(_$DataStateInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataStateInitialImpl<T> implements DataStateInitial<T> {
  const _$DataStateInitialImpl();

  @override
  String toString() {
    return 'DataState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(DataStateInitial<T> value) initial,
    required TResult Function(DataStateLoading<T> value) loading,
    required TResult Function(DataStateSuccess<T> value) success,
    required TResult Function(DataStateFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataStateInitial<T> value)? initial,
    TResult? Function(DataStateLoading<T> value)? loading,
    TResult? Function(DataStateSuccess<T> value)? success,
    TResult? Function(DataStateFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateInitial<T> value)? initial,
    TResult Function(DataStateLoading<T> value)? loading,
    TResult Function(DataStateSuccess<T> value)? success,
    TResult Function(DataStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DataStateInitial<T> implements DataState<T> {
  const factory DataStateInitial() = _$DataStateInitialImpl<T>;
}

/// @nodoc
abstract class _$$DataStateLoadingImplCopyWith<T, $Res> {
  factory _$$DataStateLoadingImplCopyWith(_$DataStateLoadingImpl<T> value,
          $Res Function(_$DataStateLoadingImpl<T>) then) =
      __$$DataStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DataStateLoadingImplCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res, _$DataStateLoadingImpl<T>>
    implements _$$DataStateLoadingImplCopyWith<T, $Res> {
  __$$DataStateLoadingImplCopyWithImpl(_$DataStateLoadingImpl<T> _value,
      $Res Function(_$DataStateLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataStateLoadingImpl<T> implements DataStateLoading<T> {
  const _$DataStateLoadingImpl();

  @override
  String toString() {
    return 'DataState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(DataStateInitial<T> value) initial,
    required TResult Function(DataStateLoading<T> value) loading,
    required TResult Function(DataStateSuccess<T> value) success,
    required TResult Function(DataStateFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataStateInitial<T> value)? initial,
    TResult? Function(DataStateLoading<T> value)? loading,
    TResult? Function(DataStateSuccess<T> value)? success,
    TResult? Function(DataStateFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateInitial<T> value)? initial,
    TResult Function(DataStateLoading<T> value)? loading,
    TResult Function(DataStateSuccess<T> value)? success,
    TResult Function(DataStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DataStateLoading<T> implements DataState<T> {
  const factory DataStateLoading() = _$DataStateLoadingImpl<T>;
}

/// @nodoc
abstract class _$$DataStateSuccessImplCopyWith<T, $Res> {
  factory _$$DataStateSuccessImplCopyWith(_$DataStateSuccessImpl<T> value,
          $Res Function(_$DataStateSuccessImpl<T>) then) =
      __$$DataStateSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$DataStateSuccessImplCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res, _$DataStateSuccessImpl<T>>
    implements _$$DataStateSuccessImplCopyWith<T, $Res> {
  __$$DataStateSuccessImplCopyWithImpl(_$DataStateSuccessImpl<T> _value,
      $Res Function(_$DataStateSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataStateSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DataStateSuccessImpl<T> implements DataStateSuccess<T> {
  const _$DataStateSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'DataState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStateSuccessImplCopyWith<T, _$DataStateSuccessImpl<T>> get copyWith =>
      __$$DataStateSuccessImplCopyWithImpl<T, _$DataStateSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateInitial<T> value) initial,
    required TResult Function(DataStateLoading<T> value) loading,
    required TResult Function(DataStateSuccess<T> value) success,
    required TResult Function(DataStateFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataStateInitial<T> value)? initial,
    TResult? Function(DataStateLoading<T> value)? loading,
    TResult? Function(DataStateSuccess<T> value)? success,
    TResult? Function(DataStateFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateInitial<T> value)? initial,
    TResult Function(DataStateLoading<T> value)? loading,
    TResult Function(DataStateSuccess<T> value)? success,
    TResult Function(DataStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DataStateSuccess<T> implements DataState<T> {
  const factory DataStateSuccess(final T data) = _$DataStateSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$DataStateSuccessImplCopyWith<T, _$DataStateSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataStateFailureImplCopyWith<T, $Res> {
  factory _$$DataStateFailureImplCopyWith(_$DataStateFailureImpl<T> value,
          $Res Function(_$DataStateFailureImpl<T>) then) =
      __$$DataStateFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$DataStateFailureImplCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res, _$DataStateFailureImpl<T>>
    implements _$$DataStateFailureImplCopyWith<T, $Res> {
  __$$DataStateFailureImplCopyWithImpl(_$DataStateFailureImpl<T> _value,
      $Res Function(_$DataStateFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$DataStateFailureImpl<T>(
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

class _$DataStateFailureImpl<T> implements DataStateFailure<T> {
  const _$DataStateFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'DataState<$T>.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateFailureImpl<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStateFailureImplCopyWith<T, _$DataStateFailureImpl<T>> get copyWith =>
      __$$DataStateFailureImplCopyWithImpl<T, _$DataStateFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(DataStateInitial<T> value) initial,
    required TResult Function(DataStateLoading<T> value) loading,
    required TResult Function(DataStateSuccess<T> value) success,
    required TResult Function(DataStateFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataStateInitial<T> value)? initial,
    TResult? Function(DataStateLoading<T> value)? loading,
    TResult? Function(DataStateSuccess<T> value)? success,
    TResult? Function(DataStateFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateInitial<T> value)? initial,
    TResult Function(DataStateLoading<T> value)? loading,
    TResult Function(DataStateSuccess<T> value)? success,
    TResult Function(DataStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class DataStateFailure<T> implements DataState<T> {
  const factory DataStateFailure(final Failure failure) =
      _$DataStateFailureImpl<T>;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$DataStateFailureImplCopyWith<T, _$DataStateFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
