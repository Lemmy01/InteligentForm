import 'package:dartz/dartz.dart';

import '../../../../core/helper_class/section_with_field_list_class.dart';
import '../repositories/create_form_repository.dart';

class CreateForm {
  final CreateFormRepository repository;

  CreateForm(this.repository);

  Future<Either<Failure, void>> call({
    String? title,
    int? dataRetentionPeriod,
    List<SectionWithList>? sections,
  }) async {
    return await repository.createForm(
      title!,
      dataRetentionPeriod!,
      sections!,
    );
  }
}
