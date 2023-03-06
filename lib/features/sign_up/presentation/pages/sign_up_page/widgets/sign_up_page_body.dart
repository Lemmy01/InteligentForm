import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:inteligent_forms/core/constants/app_string_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/my_button.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_button.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../core/shared_widgets/sized_boxes.dart';
import 'account_type_dropdown.dart';

class SignUpPageBody extends HookWidget {
  const SignUpPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final addressController = useTextEditingController();
    final fiscalCodeController = useTextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        const AccountTypeDropdown(),
        SizedBoxes.kSmallBox(),
        MyTextField(
          controller: nameController,
          hintText: AppStringContants.name,
        ),
        SizedBoxes.kSmallBox(),
        MyTextField(
          controller: emailController,
          hintText: AppStringContants.email,
        ),
        SizedBoxes.kSmallBox(),
        MyTextField(
          controller: passwordController,
          hintText: AppStringContants.password,
        ),
        SizedBoxes.kSmallBox(),
        MyTextField(
          controller: confirmPasswordController,
          hintText: AppStringContants.confirmPassword,
        ),
        SizedBoxes.kSmallBox(),
        MyTextField(
          controller: addressController,
          hintText: AppStringContants.address,
        ),
        SizedBoxes.kSmallBox(),
        MyTextField(
          controller: fiscalCodeController,
          hintText: AppStringContants.fiscalCode,
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyTextButton(
              text: AppStringContants.login,
              onPressed: () {},
            ),
            MyButton(
              text: AppStringContants.signUp,
              onPressed: () {},
              width: 30.w,
            ),
          ],
        ),
      ],
    );
  }
}
