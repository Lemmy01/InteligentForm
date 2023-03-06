import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/app_string_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_button.dart';
import 'package:sizer/sizer.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            '${AppStringContants.intelligent}\n${AppStringContants.forms}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 80.w,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17.sp),
                ),
                hintText: AppStringContants.email,
                fillColor: Theme.of(context).colorScheme.onPrimary,
                filled: true,
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
            width: 80.w,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17.sp),
                ),
                hintText: AppStringContants.password,
                fillColor: Theme.of(context).colorScheme.onPrimary,
                filled: true,
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          MyTextButton(
            text: AppStringContants.signUp,
            onPressed: () {},
          ),
          SizedBox(
            height: 5.h,
          ),
          MyButton(
            text: AppStringContants.login,
            onPressed: () {
              //TODO George Luta : login logic
            },
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: 80.w,
      padding: EdgeInsets.symmetric(
        vertical: 1.h,
      ),
      color: Theme.of(context).colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
      ),
    );
  }
}
