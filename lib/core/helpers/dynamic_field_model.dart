import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/utils/enums.dart';

class DynamicFieldModel {
  final String labelName;
  final String placeholderKeyWord;
  final List<String> documentKeyWords;
  final bool mandatory;
  final FieldType fieldType;

  DynamicFieldModel({
    required this.labelName,
    required this.placeholderKeyWord,
    required this.documentKeyWords,
    required this.mandatory,
    required this.fieldType,
  });
}

class TextFieldModel extends DynamicFieldModel {
  TextFieldModel({
    required super.labelName,
    required super.placeholderKeyWord,
    required super.documentKeyWords,
    required super.mandatory,
    required super.fieldType,
    required this.controller,
  });

  TextEditingController controller;
}

class DropdownButtonModel extends DynamicFieldModel {
  DropdownButtonModel({
    required super.labelName,
    required super.placeholderKeyWord,
    required super.documentKeyWords,
    required super.mandatory,
    required super.fieldType,
    required this.options,
  });

  final List<String> options;
}

class MultipleChoiceModel extends DropdownButtonModel {
  MultipleChoiceModel({
    required super.labelName,
    required super.placeholderKeyWord,
    required super.documentKeyWords,
    required super.mandatory,
    required super.fieldType,
    required super.options,
  });
}

class SectionModel {
  final int sectionNumber;
  final List<DynamicFieldModel> fields;

  SectionModel({
    required this.sectionNumber,
    required this.fields,
  });
}
