import '../../domain/entities/field.dart';

class FieldModel extends Field {
  FieldModel({
    required super.keyWord,
    required super.mandatory,
    required super.fieldType,
    required super.docKeys,
    required this.formId,
    this.id,
    required super.label,
  });
  String? id;
  String formId;

  factory FieldModel.fromMap(Map<String, dynamic> map) {
    return FieldModel(
      keyWord: map['keyWord'],
      mandatory: map['mandatory'],
      fieldType: map['fieldType'],
      docKeys: map['docKeys'],
      formId: map['sectionId'],
      id: map['id'],
      label: map['label'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'keyWord': keyWord,
      'mandatory': mandatory,
      'fieldType': fieldType,
      'docKeys': docKeys,
      'sectionId': formId,
      'id': id,
      'label': label,
    };
  }
}
