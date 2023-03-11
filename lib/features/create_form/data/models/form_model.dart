import '../../domain/entities/form.dart';

class FormModel extends Form {
  FormModel({
    required super.title,
    required super.dataRetentionPeriod,
  });

  FormModel fromJson(Map<String, dynamic> json) {
    return FormModel(
      title: json['title'],
      dataRetentionPeriod: json['dataRetenrionPeriod'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'dataRetenrionPeriod': dataRetentionPeriod,
    };
  }

  FormModel fromMap(Map<String, dynamic> map) {
    return FormModel(
      title: map['title'],
      dataRetentionPeriod: map['dataRetenrionPeriod'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'dataRetenrionPeriod': dataRetentionPeriod,
    };
  }
}
