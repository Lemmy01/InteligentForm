import 'dart:core';

import 'package:inteligent_forms/core/constants/firestore_constants.dart';
import 'package:inteligent_forms/features/submissions/domain/entities/submission.dart';

class FormSubmisionModel  extends Submission{
  final String id;
  final String formId;


  FormSubmisionModel({
    required this.id,
    required this.formId,
    required super.dateWhenSubmitted, 
    required super.dateWhenToBeDeleted, 
    required super.content, 
    required super.listOfFields,
  });

  Map<String, dynamic> toJson() {
    return {
      AppFirestoreSubmittedFormsFields.id: id,
      AppFirestoreSubmittedFormsFields.formId: formId,
      AppFirestoreSubmittedFormsFields.content: content,
      AppFirestoreSubmittedFormsFields.dateWhenSubmited: dateWhenSubmitted,
      AppFirestoreSubmittedFormsFields.dateToBeDeleted: dateWhenToBeDeleted,
      AppFirestoreSubmittedFormsFields.firstFields: listOfFields,
    };
  }

  factory FormSubmisionModel.fromJson(Map<String, dynamic> json) {
    return FormSubmisionModel(
      formId: json[AppFirestoreSubmittedFormsFields.formId],
      content: json[AppFirestoreSubmittedFormsFields.content],
      dateWhenSubmitted: json[AppFirestoreSubmittedFormsFields.dateWhenSubmited],
      dateWhenToBeDeleted: json[AppFirestoreSubmittedFormsFields.dateToBeDeleted],
      listOfFields: json[AppFirestoreSubmittedFormsFields.firstFields],
      id: json[AppFirestoreSubmittedFormsFields.id],
    );
  }
}
