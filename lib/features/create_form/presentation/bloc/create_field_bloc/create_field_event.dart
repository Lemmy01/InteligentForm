import 'package:equatable/equatable.dart';

import '../../../../../core/utils/enums.dart';

abstract class CreateFieldEvent extends Equatable {
  const CreateFieldEvent();

  @override
  List<Object> get props => [];
}

class CreateFieldLabelChanged extends CreateFieldEvent {
  final String label;

  const CreateFieldLabelChanged({required this.label});

  @override
  List<Object> get props => [label];
}

class CreateFieldKeyWordChanged extends CreateFieldEvent {
  final String keyWord;

  const CreateFieldKeyWordChanged({required this.keyWord});

  @override
  List<Object> get props => [keyWord];
}

class CreateFieldIsMandatoryChanged extends CreateFieldEvent {
  final bool isMandatory;

  const CreateFieldIsMandatoryChanged({required this.isMandatory});

  @override
  List<Object> get props => [isMandatory];
}

class CreateFieldFieldTypeChanged extends CreateFieldEvent {
  final FieldType fieldType;

  const CreateFieldFieldTypeChanged({required this.fieldType});

  @override
  List<Object> get props => [fieldType];
}
