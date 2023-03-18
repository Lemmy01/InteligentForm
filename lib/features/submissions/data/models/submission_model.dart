import 'package:inteligent_forms/features/submissions/domain/entities/submission.dart';

class SubmissionModel extends Submission {
  final String formId;
  final String id;

  SubmissionModel({
    required this.formId,
    required this.id,
    required super.content,
    required super.dateWhenSubmitted,
    required super.dateWhenToBeDeleted,
  });

  factory SubmissionModel.fromMap(Map<String, dynamic> map) {
    return SubmissionModel(
      formId: map['formId'],
      id: map['id'],
      content: map['content'],
      dateWhenSubmitted: map['dateWhenSubmitted'],
      dateWhenToBeDeleted: map['dateWhenToBeDeleted'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'formId': formId,
      'id': id,
      'content': content,
      'dateWhenSubmitted': dateWhenSubmitted,
      'dateWhenToBeDeleted': dateWhenToBeDeleted,
    };
  }
}
