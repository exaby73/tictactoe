import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luthor/luthor.dart';
import 'package:tictactoe/models/auth_body.dart';

typedef AuthFormState = ({
  AuthBody data,
  SchemaValidationResult<AuthBody>? result,
});

class AuthForm extends Cubit<AuthFormState> {
  AuthForm()
      : super(
          (
            data: const AuthBody(email: '', password: ''),
            result: null,
          ),
        );

  SchemaValidationResult<AuthBody> validate() {
    final result = state.data.validateSelf();
    emit((data: state.data, result: result));
    return result;
  }

  void changeEmail(String email) {
    emit((data: state.data.copyWith(email: email), result: state.result));
    if (state.result != null) validate();
  }

  String? get emailError => switch (state.result) {
        SchemaValidationError(errors: final errors) =>
          (errors['email'] as List?)?.firstOrNull as String?,
        _ => null,
      };

  String? get passwordError => switch (state.result) {
        SchemaValidationError(errors: final errors) =>
          (errors['password'] as List?)?.firstOrNull as String?,
        _ => null,
      };

  void changePassword(String password) {
    emit((data: state.data.copyWith(password: password), result: state.result));
    if (state.result != null) validate();
  }
}
