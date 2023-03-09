import '../../../../core/helper_class/section_with_field_list_class.dart';

abstract class CreateFormApi {
  Future<void> createForm(
     String title,
     int dataRetentionPeriod,
   List<SectionWithList> sections,
  );
}


