import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/config/di.dart';
import 'package:tictactoe/state/auth_cubit.dart';
import 'package:tictactoe/state/game_cubit.dart';

List<BlocProvider> get providers {
  return [
    BlocProvider<AuthCubit>(create: (context) => di()),
    BlocProvider<GameCubit>(create: (context) => di()),
  ];
}
