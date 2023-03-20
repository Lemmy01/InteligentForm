import 'package:inteligent_forms/features/create_form/domain/entities/section.dart';

import '../../../create_form/domain/entities/field.dart';

class SectionWithField extends Section {
  final List<Field> fields;

  SectionWithField({
    required super.content,
    required super.scanType,
    required super.sectionNumber,
    required this.fields,
  });
}
