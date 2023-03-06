import 'package:flutter/material.dart';
import 'package:inteligent_forms/features/sign_up/presentation/pages/home_page/widgets/sign_in_button.dart';
import 'package:sizer/sizer.dart';

import 'fill_form_button.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          SizedBox(
            height: 60.h,
          ),
          const SignInButton(),
          SizedBox(
            height: 2.h,
          ),
          const FillFormButton(),
        ],
      ),
    );
  }
}
