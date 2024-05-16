import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:luthor/luthor.dart';
import 'package:tictactoe/common/widgets/unfocus.dart';
import 'package:tictactoe/config/router.dart';
import 'package:tictactoe/config/router.gr.dart';
import 'package:tictactoe/pages/auth/forms/auth_form.dart';
import 'package:tictactoe/state/auth_cubit.dart';
import 'package:tictactoe/state/auth_state.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthForm(),
      child: Unfocus(
        child: Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: _Body(),
            ),
          ),
        ),
      ),
    );
  }
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final hidePassword = useState(true);

    return ListView(
      shrinkWrap: true,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Register your new account',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        const SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Email',
            errorText: context.select((AuthForm form) => form.emailError),
          ),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          onChanged: (value) => context.read<AuthForm>().changeEmail(value),
        ),
        const SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Password',
            errorText: context.select((AuthForm form) => form.passwordError),
            suffixIcon: IconButton(
              onPressed: () => hidePassword.value = !hidePassword.value,
              icon: Icon(
                hidePassword.value ? Icons.visibility : Icons.visibility_off,
              ),
            ),
          ),
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          obscureText: hidePassword.value,
          onChanged: (value) => context.read<AuthForm>().changePassword(value),
          onFieldSubmitted: (_) => _register(context),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () async {
                final didPop = await router.maybePop();
                if (didPop) return;
                router.popAndPush(const LoginRoute());
              },
              child: const Text('Already have an account? Login'),
            ),
            ElevatedButton(
              onPressed: () => _register(context),
              child: const Text('Register'),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _register(BuildContext context) async {
    final validationResult = context.read<AuthForm>().validate();
    if (validationResult is! SchemaValidationSuccess) return;

    final body = validationResult.data!;
    final registerResult = await context.read<AuthCubit>().register(body);
    if (!context.mounted) return;
    switch (registerResult) {
      case AuthDataSuccess():
        router.pushAndPopUntil(const HomeRoute(), predicate: (_) => false);
      case AuthDataFailure(failure: final f):
        ScaffoldMessenger.of(context)
          ..removeCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(f.messageOrDefault)));
      case _:
        break;
    }
  }
}
