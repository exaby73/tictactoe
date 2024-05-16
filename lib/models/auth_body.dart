import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:luthor/luthor.dart';
import 'package:luthor_annotation/luthor_annotation.dart';

part 'auth_body.freezed.dart';
part 'auth_body.g.dart';

@luthor
@freezed
class AuthBody with _$AuthBody {
  const factory AuthBody({
    @isEmail required String email,
    @HasMin(8) required String password,
  }) = _AuthBody;

  static SchemaValidationResult<AuthBody> validate(Map<String, dynamic> json) =>
      _$AuthBodyValidate(json);

  factory AuthBody.fromJson(Map<String, dynamic> json) =>
      _$AuthBodyFromJson(json);
}
