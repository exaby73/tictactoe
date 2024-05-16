import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/models/auth_body.dart';
import 'package:tictactoe/services/auth_service.dart';
import 'package:tictactoe/state/auth_state.dart';

@singleton
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authService, this._firebaseAuth) : super(const AuthState());

  final AuthService _authService;
  final FirebaseAuth _firebaseAuth;

  AuthDataState init() {
    final user = _firebaseAuth.currentUser;
    if (user == null) return state.loginState;
    emit(state.copyWith(loginState: AuthDataState.success(user)));
    return state.loginState;
  }

  Future<AuthDataState> login(AuthBody body) async {
    emit(state.copyWith(loginState: const AuthDataState.loading()));

    final result = await _authService.login(body);
    switch (result) {
      case Right(value: final userCredential):
        emit(state.copyWith(loginState: AuthDataState.success(userCredential)));
      case Left(value: final failure):
        emit(state.copyWith(loginState: AuthDataState.failure(failure)));
    }
    return state.loginState;
  }

  Future<AuthDataState> register(AuthBody body) async {
    emit(state.copyWith(registerState: const AuthDataState.loading()));

    final result = await _authService.register(body);
    switch (result) {
      case Right(value: final userCredential):
        emit(
          state.copyWith(
            registerState: AuthDataState.success(userCredential),
          ),
        );
      case Left(value: final failure):
        emit(state.copyWith(registerState: AuthDataState.failure(failure)));
    }
    return state.registerState;
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
    emit(const AuthState());
  }
}
