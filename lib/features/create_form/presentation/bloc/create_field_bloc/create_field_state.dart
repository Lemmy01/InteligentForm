import 'package:equatable/equatable.dart';

import '../../../../../core/utils/enums.dart';

class CreateFieldState extends Equatable {
  final bool isMandatory;
  final FieldType fieldType;

  final bool showDocumentKeywords;
  final List<String> documentKeywords;

  final bool showOptions;
  final List<String> options;

  const CreateFieldState({
    required this.isMandatory,
    required this.fieldType,
    required this.documentKeywords,
    required this.showDocumentKeywords,
    required this.showOptions,
    required this.options,
  });

  factory CreateFieldState.initial() => const CreateFieldState(
        isMandatory: false,
        fieldType: FieldType.text,
        documentKeywords: [],
        showDocumentKeywords: false,
        showOptions: false,
        options: [],
      );

  @override
  List<Object?> get props => [
        isMandatory,
        fieldType,
        documentKeywords,
        showDocumentKeywords,
        showOptions,
        options,
      ];

  CreateFieldState copyWith({
    bool? isMandatory,
    FieldType? fieldType,
    List<String>? documentKeywords,
    bool? showDocumentKeywords,
    bool? showTypes,
    List<String>? options,
  }) {
    return CreateFieldState(
      isMandatory: isMandatory ?? this.isMandatory,
      fieldType: fieldType ?? this.fieldType,
      documentKeywords: documentKeywords ?? this.documentKeywords,
      showDocumentKeywords: showDocumentKeywords ?? this.showDocumentKeywords,
      showOptions: showTypes ?? showOptions,
      options: options ?? this.options,
    );
  }

  @override
  String toString() {
    return '\n\nCreateFieldState :'
        '\nisMandatory: $isMandatory,'
        '\nfieldType: $fieldType,'
        '\ndocumentKeywords: $documentKeywords,'
        '\nshowDocumentKeywords: $showDocumentKeywords,'
        '\nshowTypes: $showOptions'
        '\noptions: $options\n\n';
  }
}
