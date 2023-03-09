import 'package:flutter/material.dart';
import 'package:inteligent_forms/features/authentication/presentation/pages/login_page/widgets/login_page_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: const LoginPageBody(),
    );
  }
}
