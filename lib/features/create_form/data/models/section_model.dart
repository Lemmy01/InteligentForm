import '../../domain/entities/section.dart';

class SectionModel extends Section {
  SectionModel({
    required super.content,
    required super.scanType,
    required super.sectionNumber,
    this.id,
    required this.formId,
  });
  String? id;
  String formId;

  factory SectionModel.fromJson(Map<String, dynamic> json) {
    return SectionModel(
      content: json['content'],
      scanType: json['scanType'],
      sectionNumber: json['sectionNumber'],
      id: json['id'],
      formId: json['formId'],
    );
  }

  toJson() {
    return {
      'content': content,
      'scanType': scanType,
      'sectionNumber': sectionNumber,
      'id': id,
      'formId': formId,
    };
  }

  factory SectionModel.fromMap(Map<String, dynamic> map) {
    return SectionModel(
      content: map['content'],
      scanType: map['scanType'],
      sectionNumber: map['sectionNumber'],
      id: map['id'],
      formId: map['formId'],
    );
  }

  toMap() {
    return {
      'content': content,
      'scanType': scanType,
      'sectionNumber': sectionNumber,
      'id': id,
      'formId': formId,
    };
  }
}
