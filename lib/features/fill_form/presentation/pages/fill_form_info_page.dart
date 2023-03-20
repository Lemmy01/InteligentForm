import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/field.dart';
import 'package:inteligent_forms/features/fill_form/domain/entities/section_with_field.dart';

import '../../../../core/constants/app_number_constants.dart';
import '../../../../core/constants/font_constants.dart';

TextEditingController controller1 = TextEditingController();
TextEditingController controller2 = TextEditingController();

List<SectionWithField> listOfSections = [
  SectionWithField(
    sectionNumber: 2,
    fields: [
      Field(
        label: 'labelName',
        keyWord: 'placeholderKeyWord',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'Text',
      ),
      Field(
        label: 'labelName',
        keyWord: 'placeholderKeyWord',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'Text',
      ),
      Field(
        label: 'labelName',
        keyWord: 'placeholderKeyWord',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'SingleChoice',
        options: ['option1', 'option2', 'option3'],
      ),
    ],
    content: 'content',
    scanType: 'Identification',
  ),
  SectionWithField(
    sectionNumber: 2,
    fields: [
      Field(
        label: 'labelName',
        keyWord: 'placeholderKeyWord',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'Text',
      ),
      Field(
        label: 'labelName',
        keyWord: 'placeholderKeyWord',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'Text',
      ),
      Field(
        label: 'labelName',
        keyWord: 'placeholderKeyWord',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'SingleChoice',
        options: ['option1', 'option2', 'option3'],
      ),
    ],
    content: 'content',
    scanType: 'Identification',
  ),
  SectionWithField(
    sectionNumber: 2,
    fields: [
      Field(
        label: 'labelName 2',
        keyWord: 'placeholderKeyWord',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'Text',
      ),
      Field(
        label: 'labelName 2',
        keyWord: 'placeholderKeyWord',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'Text',
      ),
      Field(
        label: 'labelName 2',
        keyWord: 'placeholderKeyWord',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'SingleChoice',
        options: ['option1', 'option2', 'option3'],
      ),
      Field(
        label: 'labelName 2',
        keyWord: 'placeholderKeyWord',
        docKeys: ['documentKeyWords'],
        mandatory: true,
        fieldType: 'MultipleChoice',
        options: ['option1', 'option2', 'option3'],
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
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      AppNumberConstants.longTilePadding,
                                    ),
                                  ),
                                  fillColor:
                                      Theme.of(context).colorScheme.onPrimary,
                                  filled: true,
                                  labelText: field.label,
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
                                  labelText: field.label,
                                ),
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
        ],
      ),
    );
  }
}
