import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:inteligent_forms/core/constants/app_string_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/my_button.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_button.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../core/utils/enums.dart';
import '../../../../../../core/utils/maps.dart';
import '../../../bloc/account_type_bloc.dart/bloc/account_type_bloc.dart';
import '../../../bloc/account_type_bloc.dart/bloc/account_type_changed.dart';
import '../../../bloc/account_type_bloc.dart/bloc/account_type_state.dart';

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

    SizedBox buildSizedBox() {
      return SizedBox(
        height: 1.h,
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        const MyDropdownButton(),
        buildSizedBox(),
        MyTextField(
          controller: nameController,
          hintText: AppStringContants.name,
        ),
        buildSizedBox(),
        MyTextField(
          controller: emailController,
          hintText: AppStringContants.email,
        ),
        buildSizedBox(),
        MyTextField(
          controller: passwordController,
          hintText: AppStringContants.password,
        ),
        buildSizedBox(),
        MyTextField(
          controller: confirmPasswordController,
          hintText: AppStringContants.confirmPassword,
        ),
        buildSizedBox(),
        MyTextField(
          controller: addressController,
          hintText: AppStringContants.address,
        ),
        buildSizedBox(),
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

class MyDropdownButton extends StatelessWidget {
  const MyDropdownButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountTypeBloc, AccountTypeState>(
      builder: (context, state) {
        return SizedBox(
          width: 80.w,
          child: DropdownButtonFormField<AccountType>(
            value: state.accountType,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17.sp),
              ),
              fillColor: Theme.of(context).colorScheme.onPrimary,
              filled: true,
            ),
            isDense: true,
            items: state.accountTypes
                .map(
                  (accValue) => DropdownMenuItem(
                    value: accValue,
                    child: Text(
                      accountTypeToString(accountType: accValue),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) {
              context.read<AccountTypeBloc>().add(
                    AccountTypeChanged(accountType: value!),
                  );
            },
          ),
        );
      },
    );
  }
}
