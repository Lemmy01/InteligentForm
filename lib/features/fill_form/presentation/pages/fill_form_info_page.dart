import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/font_constants.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/core/helpers/dynamic_field_model.dart';
import 'package:inteligent_forms/core/shared_widgets/app_decoration.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';
import 'package:inteligent_forms/core/shared_widgets/my_button.dart';
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
      SingleChoiceModel(
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
      SingleChoiceModel(
        labelName: 'labelName',
        placeholderKeyWord: 'placeholderKeyWord',
        documentKeyWords: ['documentKeyWords'],
        mandatory: true,
        fieldType: FieldType.singleChoice,
        options: ['option1', 'option2', 'option3'],
      ),
      MultipleChoiceModel(
        labelName: 'labelName',
        placeholderKeyWord: 'placeholderKeyWord',
        documentKeyWords: ['documentKeyWords'],
        mandatory: true,
        fieldType: FieldType.multipleChoice,
        options: ['option1', 'option2', 'option3'],
      )
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
      SingleChoiceModel(
        labelName: 'labelName',
        placeholderKeyWord: 'placeholderKeyWord',
        documentKeyWords: ['documentKeyWords'],
        mandatory: true,
        fieldType: FieldType.singleChoice,
        options: ['option1', 'option2', 'option3'],
      ),
      MultipleChoiceModel(
        labelName: 'labelName',
        placeholderKeyWord: 'placeholderKeyWord',
        documentKeyWords: ['documentKeyWords'],
        mandatory: true,
        fieldType: FieldType.multipleChoice,
        options: ['option1', 'option2', 'option3'],
      )
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
      SingleChoiceModel(
        labelName: 'labelName',
        placeholderKeyWord: 'placeholderKeyWord',
        documentKeyWords: ['documentKeyWords'],
        mandatory: true,
        fieldType: FieldType.singleChoice,
        options: ['option1', 'option2', 'option3'],
      ),
      MultipleChoiceModel(
        labelName: 'labelName',
        placeholderKeyWord: 'placeholderKeyWord',
        documentKeyWords: ['documentKeyWords'],
        mandatory: true,
        fieldType: FieldType.multipleChoice,
        options: ['option1', 'option2', 'option3'],
      )
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

  String? firstValue;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: AppNumberConstants.pageHorizontalPadding,
          right: AppNumberConstants.pageHorizontalPadding,
          top: AppNumberConstants.pageVerticalPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStringConstants.typeInformationBelow,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${AppStringConstants.section} ${section.sectionNumber}',
                        style: TextStyle(
                          fontSize: FontConstants.mediumFontSize,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                      MyButton(
                        width: 20,
                        text: AppStringConstants.scanDocs,
                        onPressed: () {},
                      ),
                    ],
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
                              fontSize: FontConstants.smallFontSize,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                          AppSizedBoxes.kSmallBox(),
                          MyTextField(
                            controller: field.controller,
                            hintText:
                                '${field.labelName}${AppStringConstants.threeDots}',
                          ),
                          AppSizedBoxes.kSmallBox(),
                        ],
                      )
                    else if (field is SingleChoiceModel)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            field.labelName,
                            style: TextStyle(
                              fontSize: FontConstants.smallFontSize,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                          AppSizedBoxes.kSmallBox(),
                          DropdownButtonFormField(
                            isExpanded: true,
                            decoration: AppDecoration().inputDecoration(
                              context,
                            ),
                            items: field.options.map((option) {
                              return MyDropdownMenuItem(
                                text: option,
                                value: false,
                              );
                            }).toList(),
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
                              fontSize: FontConstants.smallFontSize,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                          AppSizedBoxes.kSmallBox(),
                          for (final option in field.options)
                            Row(
                              children: [
                                Checkbox(
                                  shape: const CircleBorder(),
                                  value: false,
                                  side: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                  onChanged: (value) {},
                                ),
                                Text(
                                  option,
                                  style: TextStyle(
                                    fontSize: FontConstants.mediumFontSize,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
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

class MyDropdownMenuItem extends DropdownMenuItem {
  MyDropdownMenuItem({
    super.key,
    required this.text,
    required super.value,
  }) : super(
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: FontConstants.smallFontSize,
              ),
            ),
          ),
        );

  final String text;
}
