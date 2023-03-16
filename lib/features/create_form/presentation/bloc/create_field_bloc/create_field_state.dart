import 'package:equatable/equatable.dart';

import '../../../../../core/utils/enums.dart';

class CreateFieldState extends Equatable {
  final String label;
  final String keyWord;
  final bool isMandatory;
  final FieldType fieldType;
  final List<String> documentKeywords;

  final bool showDocumentKeywords;
  final bool showOptions;
  final List<String> options;

  const CreateFieldState({
    required this.label,
    required this.keyWord,
    required this.isMandatory,
    required this.fieldType,
    required this.documentKeywords,
    required this.showDocumentKeywords,
    required this.showOptions,
    required this.options,
  });

  factory CreateFieldState.initial() => const CreateFieldState(
        label: '',
        keyWord: '',
        isMandatory: false,
        fieldType: FieldType.text,
        documentKeywords: [],
        showDocumentKeywords: false,
        showOptions: false,
        options: [],
      );

  @override
  List<Object?> get props => [
        label,
        keyWord,
        isMandatory,
        fieldType,
        documentKeywords,
        showDocumentKeywords,
        showOptions,
        options,
      ];

  CreateFieldState copyWith({
    String? label,
    String? keyWord,
    bool? isMandatory,
    FieldType? fieldType,
    List<String>? documentKeywords,
    bool? showDocumentKeywords,
    bool? showTypes,
    List<String>? options,
  }) {
    return CreateFieldState(
      label: label ?? this.label,
      keyWord: keyWord ?? this.keyWord,
      isMandatory: isMandatory ?? this.isMandatory,
      fieldType: fieldType ?? this.fieldType,
      documentKeywords: documentKeywords ?? this.documentKeywords,
      showDocumentKeywords: showDocumentKeywords ?? this.showDocumentKeywords,
      showOptions: showTypes ?? this.showOptions,
      options: options ?? this.options,
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
        '\nshowTypes: $showOptions'
        '\noptions: $options';
  }
}
