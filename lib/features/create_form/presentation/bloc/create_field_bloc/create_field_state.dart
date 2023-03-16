import 'package:equatable/equatable.dart';

import '../../../../../core/utils/enums.dart';

class CreateFieldState extends Equatable {
  final String label;
  final String keyWord;
  final bool isMandatory;
  final FieldType fieldType;

  const CreateFieldState({
    required this.label,
    required this.keyWord,
    required this.isMandatory,
    required this.fieldType,
  });

  factory CreateFieldState.initial() => const CreateFieldState(
        label: '',
        keyWord: '',
        isMandatory: false,
        fieldType: FieldType.text,
      );

  @override
  List<Object?> get props => [label, keyWord, isMandatory, fieldType];

  CreateFieldState copyWith({
    String? label,
    String? keyWord,
    bool? isMandatory,
    FieldType? fieldType,
  }) {
    return CreateFieldState(
      label: label ?? this.label,
      keyWord: keyWord ?? this.keyWord,
      isMandatory: isMandatory ?? this.isMandatory,
      fieldType: fieldType ?? this.fieldType,
    );
  }

  @override
  String toString() {
    return 'CreateFieldState(label: $label, keyWord: $keyWord, isMandatory: $isMandatory, fieldType: $fieldType)';
  }
}
