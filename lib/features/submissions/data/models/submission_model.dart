import 'package:inteligent_forms/features/submissions/domain/entities/submission.dart';

class SubmissionModel extends Submission {
  final String id;
  final String formId;
  SubmissionModel({
    required this.id,
    required this.formId,
    required super.content,
    required super.dateWhenSubmitted,
    required super.dateWhenToBeDeleted,
  });

  factory SubmissionModel.fromJson(Map<String, dynamic> json) {
    return SubmissionModel(
      id: json['id'],
      formId: json['formId'],
      content: json['content'],
      dateWhenSubmitted: json['dateWhenSubmitted'],
      dateWhenToBeDeleted: json['dateWhenToBeDeleted'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'formId': formId,
      'content': content,
      'dateWhenSubmitted': dateWhenSubmitted,
      'dateWhenToBeDeleted': dateWhenToBeDeleted,
    };
  }
}
