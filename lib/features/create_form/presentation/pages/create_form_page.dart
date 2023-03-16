import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/app_number_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';
import 'package:inteligent_forms/core/shared_widgets/my_button.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';

import '../../../../core/constants/string_constants.dart';

class CreateFormPage extends StatefulWidget {
  const CreateFormPage({super.key});

  @override
  State<CreateFormPage> createState() => _CreateFormPageState();
}

class _CreateFormPageState extends State<CreateFormPage> {
  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _dataRetentionController =
      TextEditingController();

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
          ),
          AppSizedBoxes.kSmallBox(),
          MyTextField(
            hintText: AppCreateFormString.dataRetention,
            controller: _dataRetentionController,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.number,
          ),
          AppSizedBoxes.kMediumBox(),
          MyButton(
            text: AppCreateFormString.createForm,
            onPressed: () {},
            color: Theme.of(context).colorScheme.secondary,
          ),
        ],
      ),
    );
  }
}
