import 'package:flutter/material.dart';
import 'package:inteligent_forms/features/sign_up/presentation/pages/login_page/login_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../core/constants/app_string_constants.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22.sp),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
      },
      color: Theme.of(context).colorScheme.onPrimary,
      child: Padding(
        padding: EdgeInsets.all(12.sp),
        child: Text(
          AppStringContants.signIn,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
          ),
        ),
      ),
    );
  }
}
