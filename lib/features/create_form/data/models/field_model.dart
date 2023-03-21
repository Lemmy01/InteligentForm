import '../../domain/entities/field.dart';

class FieldModel extends Field {
  FieldModel({
    required super.placeholderKeyWord,
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
      placeholderKeyWord: map['placeholderKeyWord'],
      mandatory: map['mandatory'],
      fieldType: map['fieldType'],
      docKeys: map['docKeys'],
      formId: map['formId'],
      id: map['id'],
      label: map['label'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'placeholderKeyWord': placeholderKeyWord,
      'mandatory': mandatory,
      'fieldType': fieldType,
      'docKeys': docKeys,
      'formId': formId,
      'id': id,
      'label': label,
    };
  }
}
