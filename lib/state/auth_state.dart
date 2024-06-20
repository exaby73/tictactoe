import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/common/data_state.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(DataStateInitial<User>()) DataState<User> loginState,
    @Default(DataStateInitial<User>()) DataState<User> registerState,
  }) = _AuthState;
}
