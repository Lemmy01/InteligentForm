import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inteligent_forms/core/shared_widgets/my_snack_bar.dart';
import 'package:inteligent_forms/features/authentication/presentation/pages/app_bottom_bar.dart';
import 'package:inteligent_forms/features/authentication/presentation/pages/login_page/widgets/login_page_body.dart';

import '../../bloc/authentication_bloc/authentication_bloc.dart';
import '../../bloc/authentication_bloc/authentication_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          if (state is LoginFailureState) {
            showMySnackBar(context, state.message);
          }
          if (state is LoginSuccessState) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const AppBottomBar(),
                ),
                (route) => false);
          }
        },
        builder: (context, state) {
          return const LoginPageBody();
        },
      ),
    );
  }
}
