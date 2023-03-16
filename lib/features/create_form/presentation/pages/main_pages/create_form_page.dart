import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inteligent_forms/core/constants/app_number_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';
import 'package:inteligent_forms/core/shared_widgets/my_button.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';

import '../../../../../core/constants/string_constants.dart';
import '../../bloc/create_form_bloc/create_form_bloc.dart';
import '../../bloc/create_form_bloc/create_form_event.dart';

class CreateFormPage extends StatefulWidget {
  const CreateFormPage({super.key});

  @override
  State<CreateFormPage> createState() => _CreateFormPageState();
}

class _CreateFormPageState extends State<CreateFormPage> {
  late final TextEditingController _nameEditingController;
  late final TextEditingController _dataRetentionController;

  @override
  void initState() {
    super.initState();

    _nameEditingController = TextEditingController(
      text: context.read<CreateFormBloc>().state.title,
    );

    _dataRetentionController = TextEditingController(
      text: context.read<CreateFormBloc>().state.dataRetentionPeriod.toString(),
    );
  }

  @override
  void dispose() {
    _nameEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppNumberConstants.pageHorizontalPadding,
        top: AppNumberConstants.pageVerticalPadding,
        right: AppNumberConstants.pageHorizontalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTextField(
            hintText: AppCreateFormString.formName,
            controller: _nameEditingController,
            textAlign: TextAlign.start,
            onChanged: (textFieldValue) => context.read<CreateFormBloc>().add(
                  ChangeTitle(title: textFieldValue),
                ),
          ),
          AppSizedBoxes.kSmallBox(),
          MyTextField(
            hintText: AppCreateFormString.dataRetention,
            controller: _dataRetentionController,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.number,
            onChanged: (textFieldValue) => context.read<CreateFormBloc>().add(
                  ChangeDataRetentionPeriod(
                      dataRetentionPeriod: int.parse(textFieldValue)),
                ),
          ),
          AppSizedBoxes.kMediumBox(),
          MyButton(
            text: AppCreateFormString.createForm,
            onPressed: () {
              context.read<CreateFormBloc>().add(CreateFormSubmitted());
            },
            color: Theme.of(context).colorScheme.secondary,
          ),
        ],
      ),
    );
  }
}
