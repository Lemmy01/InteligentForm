import 'package:dartz/dartz.dart';


import '../../../../core/errors/failures.dart';
import '../entities/field.dart';
import '../entities/section.dart';
import '../repositories/create_form_repository.dart';

class CreateForm {
  final CreateFormRepository repository;

  CreateForm(this.repository);

  Future<Either<Failure, void>> call({
    String? title,
    int? dataRetentionPeriod,
    List<Section>? sections,
    List<Field>? fields,
  }) async {
    return await repository.createForm(
      title!,
      dataRetentionPeriod!,
      sections!,
      fields!,
    );
  }
}
