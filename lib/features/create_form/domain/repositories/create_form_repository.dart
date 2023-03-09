import 'package:dartz/dartz.dart';

import '../../../../core/helper_class/section_with_field_list_class.dart';

abstract class CreateFormRepository {
  Future<Either<Failure, void>> createForm(
    String title,
    int dataRetentionPeriod,
    List<SectionWithList> sections,
  );
}

class Failure {}
