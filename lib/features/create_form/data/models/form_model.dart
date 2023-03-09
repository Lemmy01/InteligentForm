import '../../domain/entities/form.dart';

class FormModel extends Form {
  FormModel({
    required super.title,
    required super.dataRetenrionPeriod,
  });
   
  fromJson(Map<String, dynamic> json) {
    return FormModel(
      title: json['title'],
      dataRetenrionPeriod: json['dataRetenrionPeriod'],
    );
  }

  toJson() {
    return {
      'title': title,
      'dataRetenrionPeriod': dataRetenrionPeriod,
    };
  }

  fromMap(Map<String, dynamic> map) {
    return FormModel(
      title: map['title'],
      dataRetenrionPeriod: map['dataRetenrionPeriod'],
    );
  }

  toMap() {
    return {
      'title': title,
      'dataRetenrionPeriod': dataRetenrionPeriod,
    };
  }
}
