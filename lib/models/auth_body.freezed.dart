// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthBody _$AuthBodyFromJson(Map<String, dynamic> json) {
  return _AuthBody.fromJson(json);
}

/// @nodoc
mixin _$AuthBody {
  @isEmail
  String get email => throw _privateConstructorUsedError;
  @HasMin(8)
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthBodyCopyWith<AuthBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBodyCopyWith<$Res> {
  factory $AuthBodyCopyWith(AuthBody value, $Res Function(AuthBody) then) =
      _$AuthBodyCopyWithImpl<$Res, AuthBody>;
  @useResult
  $Res call({@isEmail String email, @HasMin(8) String password});
}

/// @nodoc
class _$AuthBodyCopyWithImpl<$Res, $Val extends AuthBody>
    implements $AuthBodyCopyWith<$Res> {
  _$AuthBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthBodyImplCopyWith<$Res>
    implements $AuthBodyCopyWith<$Res> {
  factory _$$AuthBodyImplCopyWith(
          _$AuthBodyImpl value, $Res Function(_$AuthBodyImpl) then) =
      __$$AuthBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@isEmail String email, @HasMin(8) String password});
}

/// @nodoc
class __$$AuthBodyImplCopyWithImpl<$Res>
    extends _$AuthBodyCopyWithImpl<$Res, _$AuthBodyImpl>
    implements _$$AuthBodyImplCopyWith<$Res> {
  __$$AuthBodyImplCopyWithImpl(
      _$AuthBodyImpl _value, $Res Function(_$AuthBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthBodyImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthBodyImpl implements _AuthBody {
  const _$AuthBodyImpl(
      {@isEmail required this.email, @HasMin(8) required this.password});

  factory _$AuthBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthBodyImplFromJson(json);

  @override
  @isEmail
  final String email;
  @override
  @HasMin(8)
  final String password;

  @override
  String toString() {
    return 'AuthBody(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthBodyImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthBodyImplCopyWith<_$AuthBodyImpl> get copyWith =>
      __$$AuthBodyImplCopyWithImpl<_$AuthBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthBodyImplToJson(
      this,
    );
  }
}

abstract class _AuthBody implements AuthBody {
  const factory _AuthBody(
      {@isEmail required final String email,
      @HasMin(8) required final String password}) = _$AuthBodyImpl;

  factory _AuthBody.fromJson(Map<String, dynamic> json) =
      _$AuthBodyImpl.fromJson;

  @override
  @isEmail
  String get email;
  @override
  @HasMin(8)
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$AuthBodyImplCopyWith<_$AuthBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
