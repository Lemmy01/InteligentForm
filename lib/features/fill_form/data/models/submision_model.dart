import 'dart:core';

import 'package:inteligent_forms/core/constants/firestore_constants.dart';

class FormSubmisionModel {
  final String formId;
  final String content;
  final DateTime dateWhenSubmited;
  final DateTime dateToBeDeleted;

  FormSubmisionModel({
    required this.formId,
    required this.content,
    required this.dateWhenSubmited,
    required this.dateToBeDeleted,
  });

  Map<String, dynamic> toJson() {
    return {
      AppFirestoreSubmittedFormsFields.formId: formId,
      AppFirestoreSubmittedFormsFields.content: content,
      AppFirestoreSubmittedFormsFields.dateWhenSubmited: dateWhenSubmited,
      AppFirestoreSubmittedFormsFields.dateToBeDeleted: dateToBeDeleted,
    };
  }

  factory FormSubmisionModel.fromJson(Map<String, dynamic> json) {
    return FormSubmisionModel(
      formId: json[AppFirestoreSubmittedFormsFields.formId],
      content: json[AppFirestoreSubmittedFormsFields.content],
      dateWhenSubmited: json[AppFirestoreSubmittedFormsFields.dateWhenSubmited],
      dateToBeDeleted: json[AppFirestoreSubmittedFormsFields.dateToBeDeleted],
    );
  }
}
