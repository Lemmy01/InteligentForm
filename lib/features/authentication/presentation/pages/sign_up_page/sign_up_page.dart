import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inteligent_forms/features/authentication/presentation/pages/app_bottom_bar.dart';
import 'package:inteligent_forms/features/authentication/presentation/pages/login_page/login_page.dart';
import 'package:inteligent_forms/features/authentication/presentation/pages/sign_up_page/widgets/sign_up_page_body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
        return false;
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const AppBottomBar();
            }
            return const SignUpPageBody();
          },
        ),
      ),
    );
  }
}
