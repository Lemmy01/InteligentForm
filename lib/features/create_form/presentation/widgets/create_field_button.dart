import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inteligent_forms/core/shared_widgets/my_snack_bar.dart';
import 'package:inteligent_forms/features/create_form/domain/validators/create_field_validators.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/shared_widgets/my_button.dart';
import '../../domain/entities/field.dart';
import '../bloc/create_field_bloc/create_field_bloc.dart';
import '../bloc/create_field_bloc/create_field_event.dart';
import '../bloc/create_form_bloc/create_form_bloc.dart';
import '../bloc/create_form_bloc/create_form_event.dart';

class CreateFieldButton extends StatelessWidget {
  const CreateFieldButton({
    super.key,
    required this.keywordController,
    required this.labelController,
  });

  final TextEditingController keywordController;
  final TextEditingController labelController;

  @override
  Widget build(BuildContext context) {
    return MyButton(
      text: AppStringConstants.addField,
      color: Theme.of(context).colorScheme.secondary,
      width: 80.w,
      onPressed: () {
        CreateFieldValidators.createFieldValidate(
          label: labelController.text.trim(),
          placeholderkeyWord: keywordController.text.trim(),
          allPlaceholderkeyWords: context
              .read<CreateFormBloc>()
              .state
              .fields
              .map((e) => e.placeholderKeyWord)
              .toList(),
          fieldType: context.read<CreateFieldBloc>().state.fieldType,
          options: context.read<CreateFieldBloc>().state.options,
          documentKeywords:
              context.read<CreateFieldBloc>().state.documentKeywords,
        ).fold(
          (l) {
            showMySnackBar(context, l.failureMessage);
          },
          (r) {
            context.read<CreateFormBloc>().add(
                  AddField(
                    field: Field(
                      placeholderKeyWord: keywordController.text.trim(),
                      mandatory:
                          context.read<CreateFieldBloc>().state.isMandatory,
                      fieldType: context
                          .read<CreateFieldBloc>()
                          .state
                          .fieldType
                          .toString(),
                      docKeys: context
                          .read<CreateFieldBloc>()
                          .state
                          .documentKeywords,
                      label: labelController.text.trim(),
                    ),
                  ),
                );
            context.read<CreateFieldBloc>().add(
                  CreateFieldSubmitted(),
                );
            showMySnackBar(context, AppStringConstants.fieldAdded);
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
