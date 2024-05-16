// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthBodyImpl _$$AuthBodyImplFromJson(Map<String, dynamic> json) =>
    _$AuthBodyImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$AuthBodyImplToJson(_$AuthBodyImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

// **************************************************************************
// LuthorGenerator
// **************************************************************************

Validator $AuthBodySchema = l.schema({
  'email': l.string().email().required(),
  'password': l.string().min(8).required(),
});

SchemaValidationResult<AuthBody> _$AuthBodyValidate(
        Map<String, dynamic> json) =>
    $AuthBodySchema.validateSchema(json, fromJson: AuthBody.fromJson);

extension AuthBodyValidationExtension on AuthBody {
  SchemaValidationResult<AuthBody> validateSelf() =>
      _$AuthBodyValidate(toJson());
}
