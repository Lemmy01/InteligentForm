import 'package:flutter/material.dart';
import 'package:inteligent_forms/features/authentication/presentation/pages/home_page/home_page.dart';
import 'package:inteligent_forms/features/authentication/presentation/pages/login_page/widgets/login_page_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
        return false;
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        body: const LoginPageBody(),
      ),
    );
  }
}
