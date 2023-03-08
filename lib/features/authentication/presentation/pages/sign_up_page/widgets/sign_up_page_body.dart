import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/my_button.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_button.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';
import 'package:inteligent_forms/core/utils/enums.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../core/shared_widgets/sized_boxes.dart';
import '../../../bloc/account_type_bloc.dart/bloc/account_type_bloc.dart';
import '../../../bloc/account_type_bloc.dart/bloc/account_type_state.dart';
import '../../app_bottom_bar.dart';
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

    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            const AccountTypeDropdown(),
            SizedBoxes.kSmallBox(),
            BlocBuilder<AccountTypeBloc, AccountTypeState>(
              builder: (context, state) {
                return MyTextField(
                  controller: nameController,
                  hintText: state.accountType == AccountType.individual
                      ? '${AppStringContants.name} ${AppStringContants.unique}'
                      : state.accountType == AccountType.company
                          ? '${AppStringContants.companyName}'
                              ' ${AppStringContants.unique}'
                          : '${AppStringContants.institutionName}'
                              ' ${AppStringContants.unique}',
                );
              },
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
            BlocBuilder<AccountTypeBloc, AccountTypeState>(
              builder: (context, state) {
                return Column(
                  children: [
                    if (state.accountType == AccountType.company) ...[
                      SizedBoxes.kSmallBox(),
                      MyTextField(
                        controller: fiscalCodeController,
                        hintText: AppStringContants.fiscalCode,
                      ),
                    ]
                  ],
                );
              },
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
                  onPressed: () {
                    //TODO George Luta : schimba cu bloc (dummmy acum)
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AppBottomBar(),
                      ),
                    );
                  },
                  width: 30.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}