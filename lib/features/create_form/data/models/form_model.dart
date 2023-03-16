import '../../domain/entities/form.dart';

class FormModel extends Form {
  String? id;
  FormModel({
    required super.title,
    required super.dataRetentionPeriod,
    this.id,
  });

  factory FormModel.fromMap(Map<String, dynamic> map) {
    return FormModel(
      id: map['id'],
      title: map['title'],
      dataRetentionPeriod: map['dataRetenrionPeriod'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'dataRetenrionPeriod': dataRetentionPeriod,
    };
  }
}
