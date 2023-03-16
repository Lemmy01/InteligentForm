import 'package:equatable/equatable.dart';

import '../../../../../core/utils/enums.dart';

class CreateFieldState extends Equatable {
  final String label;
  final String keyWord;
  final bool isMandatory;
  final FieldType fieldType;
  final List<String> documentKeywords;

  final bool showDocumentKeywords;
  final bool showTypes;

  const CreateFieldState({
    required this.label,
    required this.keyWord,
    required this.isMandatory,
    required this.fieldType,
    required this.documentKeywords,
    required this.showDocumentKeywords,
    required this.showTypes,
  });

  factory CreateFieldState.initial() => const CreateFieldState(
        label: '',
        keyWord: '',
        isMandatory: false,
        fieldType: FieldType.text,
        documentKeywords: [],
        showDocumentKeywords: false,
        showTypes: false,
      );

  @override
  List<Object?> get props => [
        label,
        keyWord,
        isMandatory,
        fieldType,
        documentKeywords,
        showDocumentKeywords,
        showTypes
      ];

  CreateFieldState copyWith({
    String? label,
    String? keyWord,
    bool? isMandatory,
    FieldType? fieldType,
    List<String>? documentKeywords,
    bool? showDocumentKeywords,
    bool? showTypes,
  }) {
    return CreateFieldState(
      label: label ?? this.label,
      keyWord: keyWord ?? this.keyWord,
      isMandatory: isMandatory ?? this.isMandatory,
      fieldType: fieldType ?? this.fieldType,
      documentKeywords: documentKeywords ?? this.documentKeywords,
      showDocumentKeywords: showDocumentKeywords ?? this.showDocumentKeywords,
      showTypes: showTypes ?? this.showTypes,
    );
  }

  @override
  String toString() {
    return 'CreateFieldState :'
        '\nlabel: $label,'
        '\nkeyWord: $keyWord,'
        '\nisMandatory: $isMandatory,'
        '\nfieldType: $fieldType,'
        '\ndocumentKeywords: $documentKeywords,'
        '\nshowDocumentKeywords: $showDocumentKeywords,'
        '\nshowTypes: $showTypes';
  }
}
