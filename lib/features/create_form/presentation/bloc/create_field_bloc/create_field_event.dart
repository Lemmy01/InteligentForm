import 'package:equatable/equatable.dart';

import '../../../../../core/utils/enums.dart';

abstract class CreateFieldEvent extends Equatable {
  const CreateFieldEvent();

  @override
  List<Object> get props => [];
}

class CreateFieldIsMandatoryChanged extends CreateFieldEvent {
  final bool isMandatory;

  const CreateFieldIsMandatoryChanged({required this.isMandatory});

  @override
  List<Object> get props => [isMandatory];
}

class CreateFieldTypeChanged extends CreateFieldEvent {
  final FieldType fieldType;

  const CreateFieldTypeChanged({required this.fieldType});

  @override
  List<Object> get props => [fieldType];
}

class DocumentKeywordsChanged extends CreateFieldEvent {
  final List<String> documentKeywords;

  const DocumentKeywordsChanged({required this.documentKeywords});

  @override
  List<Object> get props => [documentKeywords];
}

class ShowDocumentKeywordsChanged extends CreateFieldEvent {
  final bool showDocumentKeywords;

  const ShowDocumentKeywordsChanged({
    required this.showDocumentKeywords,
  });

  @override
  List<Object> get props => [showDocumentKeywords];
}

class ShowOptionsChanged extends CreateFieldEvent {
  final bool showOptions;

  const ShowOptionsChanged({required this.showOptions});

  @override
  List<Object> get props => [showOptions];
}

class OptionsChanged extends CreateFieldEvent {
  final List<String> options;

  const OptionsChanged({required this.options});

  @override
  List<Object> get props => [options];
}
