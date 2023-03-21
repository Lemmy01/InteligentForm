import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/core/errors/failures.dart';
import 'package:inteligent_forms/features/fill_form/domain/entities/section_with_field.dart';

import '../repositories/fill_form_repository.dart';

class GetFormUsecase {
  final FillFormRepository repository;

  GetFormUsecase(this.repository);

  Future<Either<Failure, List<SectionWithField>>> getSectionsWithFields(
      String formId) async {
    return await repository.getSectionWithField(formId);
  }

  Future<void> submitFormSubmission(
    String formId,
    String content,
    DateTime dateWhenSubmited,
    DateTime dateToBeDeleted,
    List<String> listOfFields,
  ) async {
    await repository.submitFormSubmission(
      formId,
      content,
      dateWhenSubmited,
      dateToBeDeleted,
      listOfFields,
    );
  }
}
