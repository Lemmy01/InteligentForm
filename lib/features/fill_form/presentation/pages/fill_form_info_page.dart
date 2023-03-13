import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/font_constants.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/core/helpers/dynamic_field_model.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';

import '../../../../core/constants/app_number_constants.dart';
import '../../../../core/utils/enums.dart';

TextEditingController controller1 = TextEditingController();
TextEditingController controller2 = TextEditingController();

List<SectionModel> listOfSections = [
  SectionModel(
    sectionNumber: 1,
    fields: [
      TextFieldModel(
        labelName: 'labelName',
        placeholderKeyWord: 'placeholderKeyWord',
        documentKeyWords: ['documentKeyWords'],
        mandatory: true,
        fieldType: FieldType.text,
        controller: controller1,
      ),
      TextFieldModel(
        labelName: 'labelName',
        placeholderKeyWord: 'placeholderKeyWord',
        documentKeyWords: ['documentKeyWords'],
        mandatory: true,
        fieldType: FieldType.text,
        controller: controller2,
      ),
      DropdownButtonModel(
        labelName: 'labelName',
        placeholderKeyWord: 'placeholderKeyWord',
        documentKeyWords: ['documentKeyWords'],
        mandatory: true,
        fieldType: FieldType.singleChoice,
        options: ['option1', 'option2', 'option3'],
      ),
    ],
  ),
  SectionModel(
    sectionNumber: 2,
    fields: [
      TextFieldModel(
        labelName: 'labelName',
        placeholderKeyWord: 'placeholderKeyWord',
        documentKeyWords: ['documentKeyWords'],
        mandatory: true,
        fieldType: FieldType.text,
        controller: controller1,
      ),
      TextFieldModel(
        labelName: 'labelName',
        placeholderKeyWord: 'placeholderKeyWord',
        documentKeyWords: ['documentKeyWords'],
        mandatory: true,
        fieldType: FieldType.text,
        controller: controller2,
      ),
      DropdownButtonModel(
        labelName: 'labelName',
        placeholderKeyWord: 'placeholderKeyWord',
        documentKeyWords: ['documentKeyWords'],
        mandatory: true,
        fieldType: FieldType.singleChoice,
        options: ['option1', 'option2', 'option3'],
      ),
    ],
  ),
];

class FillFormInfoPage extends StatefulWidget {
  const FillFormInfoPage({super.key});

  @override
  State<FillFormInfoPage> createState() => _FillFormInfoPageState();
}

class _FillFormInfoPageState extends State<FillFormInfoPage> {
  @override
  void initState() {
    for (final section in listOfSections) {
      for (final field in section.fields) {
        if (field is TextFieldModel) {
          final controller = TextEditingController();
          field.controller = controller;
        }
      }
    }
    super.initState();
  }

  @override
  void dispose() {
    for (final section in listOfSections) {
      for (final field in section.fields) {
        if (field is TextFieldModel) {
          field.controller.dispose();
        }
      }
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppNumberConstants.pageHorizontalPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStringContants.typeInformationBelow,
              style: TextStyle(
                fontSize: FontConstants.mediumFontSize,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            AppSizedBoxes.kSmallBox(),
            for (final section in listOfSections)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Section ${section.sectionNumber}',
                    style: TextStyle(
                      fontSize: FontConstants.mediumFontSize,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  AppSizedBoxes.kSmallBox(),
                  for (final field in section.fields)
                    if (field is TextFieldModel)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            field.labelName,
                            style: TextStyle(
                              fontSize: FontConstants.mediumFontSize,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                          AppSizedBoxes.kSmallBox(),
                          MyTextField(
                            controller: field.controller,
                            hintText: field.labelName,
                          ),
                          AppSizedBoxes.kSmallBox(),
                        ],
                      )
                    else if (field is DropdownButtonModel)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            field.labelName,
                            style: TextStyle(
                              fontSize: FontConstants.mediumFontSize,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                          AppSizedBoxes.kSmallBox(),
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  AppNumberConstants.longTilePadding,
                                ),
                              ),
                            ),
                            items: field.options
                                .map(
                                  (option) => DropdownMenuItem(
                                    value: option,
                                    child: Text(option),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {},
                          ),
                          AppSizedBoxes.kSmallBox(),
                        ],
                      )
                    else if (field is MultipleChoiceModel)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            field.labelName,
                            style: TextStyle(
                              fontSize: FontConstants.mediumFontSize,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                          AppSizedBoxes.kSmallBox(),
                          for (final option in field.options)
                            Row(
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: (value) {},
                                ),
                                Text(option),
                              ],
                            ),
                          AppSizedBoxes.kSmallBox(),
                        ],
                      ),
                  AppSizedBoxes.kSmallBox(),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
