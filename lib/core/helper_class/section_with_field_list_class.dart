import '../../features/create_form/domain/entities/field.dart';
import '../../features/create_form/domain/entities/section.dart';

class SectionWithList extends Section {
  SectionWithList({
    required super.content,
    required super.scanType,
    required super.sectionNumber,
    this.fields,
  });

  final List<Field>? fields;

  void addField(Field field) {
    fields!.add(field);
  }

  void removeField(Field field) {
    fields!.remove(field);
  }

  void updateField(Field field) {
    fields![fields!.indexOf(field)] = field;
  }
}
