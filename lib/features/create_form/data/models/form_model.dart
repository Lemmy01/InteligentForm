import '../../../forms/domain/entities/form_entity.dart';

class FormModel extends FormEntity {
  int dataRetentionPeriod;
  String userId;

  FormModel({
    required super.id,
    required super.title,
    required this.dataRetentionPeriod,
    required this.userId,
    required super.dateAdded,
  });

  factory FormModel.fromMap(Map<String, dynamic> map) {
    return FormModel(
      id: map['id'],
      title: map['title'],
      dataRetentionPeriod: map['dataRetentionPeriod'],
      userId: map['userId'],
      dateAdded: map['dateAdded'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'dataRetenrionPeriod': dataRetentionPeriod,
      'dateAdded': DateTime.now(),
      'userId': userId,
    };
  }
}
