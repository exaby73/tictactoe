import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tictactoe/config/router.dart';
import 'package:tictactoe/config/router.gr.dart';
import 'package:tictactoe/state/auth_cubit.dart';
import 'package:tictactoe/state/auth_state.dart';

@RoutePage()
class SplashPage extends HookWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        SchedulerBinding.instance.addPostFrameCallback(
          (timeStamp) {
            final loginState = context.read<AuthCubit>().init();
            switch (loginState) {
              case AuthDataSuccess():
                router.popAndPush(const HomeRoute());
              case _:
                router.popAndPush(const LoginRoute());
            }
          },
        );
        return null;
      },
      const [],
    );

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
