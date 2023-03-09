import '../../domain/entities/field.dart';

class FieldModel extends Field {
  FieldModel({
    required super.keyWord,
    required super.mandatory,
    required super.fieldType,
    required super.docKeys,
    required this.sectionId,
    required this.id,
  });
  String id;
  String sectionId;

  fromJson(Map<String, dynamic> json) {
    return FieldModel(
      keyWord: json['keyWord'],
      mandatory: json['mandatory'],
      fieldType: json['fieldType'],
      docKeys: json['docKeys'],
      sectionId: json['sectionId'],
      id: json['id'],
    );
  }

  toJson() {
    return {
      'keyWord': keyWord,
      'mandatory': mandatory,
      'fieldType': fieldType,
      'docKeys': docKeys,
      'sectionId': sectionId,
      'id': id,
    };
  }

  fromMap(Map<String, dynamic> map) {
    return FieldModel(
      keyWord: map['keyWord'],
      mandatory: map['mandatory'],
      fieldType: map['fieldType'],
      docKeys: map['docKeys'],
      sectionId: map['sectionId'],
      id: map['id'],
    );
  }

  toMap() {
    return {
      'keyWord': keyWord,
      'mandatory': mandatory,
      'fieldType': fieldType,
      'docKeys': docKeys,
      'sectionId': sectionId,
      'id': id,
    };
  }
}
