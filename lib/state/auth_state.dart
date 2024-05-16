import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/common/failure.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthDataState.initial()) AuthDataState loginState,
    @Default(AuthDataState.initial()) AuthDataState registerState,
  }) = _AuthState;
}

@freezed
sealed class AuthDataState with _$AuthDataState {
  const factory AuthDataState.initial() = AuthDataInitial;

  const factory AuthDataState.loading() = AuthDataLoading;

  const factory AuthDataState.success(User userCredential) = AuthDataSuccess;

  const factory AuthDataState.failure(Failure failure) = AuthDataFailure;
}
