import 'package:flutter/material.dart';
import 'package:inteligent_forms/features/sign_up/presentation/pages/sign_up_page/widgets/sign_up_page_body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: const SignUpPageBody(),
    );
  }
}
