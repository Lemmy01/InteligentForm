import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/field.dart';
import 'package:inteligent_forms/features/fill_form/domain/entities/section_with_field.dart';

import '../../../../core/constants/app_number_constants.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/constants/string_constants.dart';
import '../../../../core/shared_widgets/my_button.dart';

TextEditingController controller1 = TextEditingController();
TextEditingController controller2 = TextEditingController();

List<SectionWithField> listOfSections = [
  SectionWithField(
    sectionNumber: 2,
    fields: [
      Field(
        label: 'labelName1',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'Text',
        placeholderKeyWord: 'placeholderKeyWord',
      ),
      Field(
        label: 'labelName2',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'Text',
        placeholderKeyWord: 'placeholderKeyWord',
      ),
      Field(
        label: 'labelName3',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'Text',
        placeholderKeyWord: 'placeholderKeyWord',
      ),
    ],
    content: 'content',
    scanType: 'Identification',
  ),
  SectionWithField(
    sectionNumber: 3,
    fields: [
      Field(
        label: 'labelName4',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'Text',
        placeholderKeyWord: 'placeholderKeyWord',
      ),
      Field(
        label: 'labelName5',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'Text',
        placeholderKeyWord: 'placeholderKeyWord',
      ),
      Field(
        label: 'labelName6',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'MultipleChoice',
        options: ['option1', 'option2', 'option3'],
        placeholderKeyWord: 'placeholderKeyWord',
      ),
    ],
    content: 'content',
    scanType: 'Identification',
  ),
];

class FillFormInfoPage extends StatefulWidget {
  const FillFormInfoPage({super.key});

  @override
  State<FillFormInfoPage> createState() => _FillFormInfoPageState();
}

class _FillFormInfoPageState extends State<FillFormInfoPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FormBuilder(
            key: _formKey,
            onChanged: () {
              _formKey.currentState!.save();
            },
            child: Column(
              children: [
                for (final SectionWithField section in listOfSections)
                  Column(
                    children: [
                      Text(
                        "Section ${section.sectionNumber}",
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontSize: FontConstants.largeFontSize,
                                  color: Colors.white,
                                ),
                      ),
                      AppSizedBoxes.kMediumBox(),
                      for (final Field field in section.fields)
                        Column(
                          children: [
                            if (field.fieldType == 'Text')
                              FormBuilderTextField(
                                name: field.label,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please select at least one option';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      AppNumberConstants.longTilePadding,
                                    ),
                                  ),
                                  fillColor:
                                      Theme.of(context).colorScheme.onPrimary,
                                  filled: true,
                                  hintText: field.label,
                                ),
                              ),
                            if (field.fieldType == 'SingleChoice')
                              FormBuilderDropdown(
                                name: field.label,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      AppNumberConstants.longTilePadding,
                                    ),
                                  ),
                                  fillColor:
                                      Theme.of(context).colorScheme.onPrimary,
                                  filled: true,
                                  hintText: field.label,
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please select at least one option';
                                  }
                                  return null;
                                },
                                items: field.options!
                                    .map((option) => DropdownMenuItem(
                                          value: option,
                                          child: Text(option),
                                        ))
                                    .toList(),
                              ),
                            if (field.fieldType == 'MultipleChoice')
                              FormBuilderCheckboxGroup(
                                name: field.label,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please select at least one option';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: AppNumberConstants.longTilePadding,
                                    right: AppNumberConstants.longTilePadding,
                                  ),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  fillColor:
                                      Theme.of(context).colorScheme.onPrimary,
                                  labelText: field.label,
                                  labelStyle: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: FontConstants.largeFontSize,
                                        color: Colors.grey.shade400,
                                      ),
                                ),
                                options: field.options!
                                    .map((option) => FormBuilderFieldOption(
                                          value: option,
                                          child: Text(option),
                                        ))
                                    .toList(),
                              ),
                            AppSizedBoxes.kSmallBox(),
                          ],
                        ),
                    ],
                  ),
              ],
            ),
          ),
          MyButton(
            width: 0,
            text: AppStringConstants.scanDocs,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                //todo: add logic to save the form
                _formKey.currentState!.save();
                final result = _formKey.currentState!.value;
                log(result.toString());
              }
            },
          ),
        ],
      ),
    );
  }
}
