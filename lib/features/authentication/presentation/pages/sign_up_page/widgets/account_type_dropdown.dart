import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inteligent_forms/core/constants/app_number_constants.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../core/utils/enums.dart';
import '../../../../../../core/utils/maps.dart';
import '../../../bloc/account_type_bloc.dart/bloc/account_type_bloc.dart';
import '../../../bloc/account_type_bloc.dart/bloc/account_type_changed.dart';
import '../../../bloc/account_type_bloc.dart/bloc/account_type_state.dart';

class AccountTypeDropdown extends StatelessWidget {
  const AccountTypeDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountTypeBloc, AccountTypeState>(
      builder: (context, state) {
        return SizedBox(
          width: 80.w,
          child: DropdownButtonFormField<AccountType>(
            isExpanded: true,
            value: state.accountType,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  AppNumberConstants.longTilePadding,
                ),
              ),
              fillColor: Theme.of(context).colorScheme.onPrimary,
              filled: true,
            ),
            isDense: true,
            items: state.accountTypes
                .map(
                  (accValue) => DropdownMenuItem(
                    value: accValue,
                    child: Center(
                      child: Text(
                        accountTypeToString(accountType: accValue),
                      ),
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
