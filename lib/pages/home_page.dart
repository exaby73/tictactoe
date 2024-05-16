import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/config/router.dart';
import 'package:tictactoe/config/router.gr.dart';
import 'package:tictactoe/state/auth_cubit.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await context.read<AuthCubit>().logout();
            router.pushAndPopUntil(
              const LoginRoute(),
              predicate: (route) => false,
            );
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
