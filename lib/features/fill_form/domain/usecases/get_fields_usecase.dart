import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/core/errors/failures.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/field.dart';

import '../repositories/fill_form_repository.dart';

class GetFormUsecase {
  final FillFormRepository repository;

  GetFormUsecase(this.repository);

  Future<Either<Failure, List<Field>>> call(
      String formId, String placeHolder) async {
    return await repository.getFormFields(
      formId,
      placeHolder,
    );
  }
}
