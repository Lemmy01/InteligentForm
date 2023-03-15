import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/core/errors/failures.dart';

import '../../../create_form/domain/entities/form.dart';
import '../repositories/fill_form_repository.dart';

class GetFormUsecase {
  final FillFormRepository repository;

  GetFormUsecase(this.repository);

  Future<Either<Failure, Form>> call(String formId) async {
    return await repository.getForm(formId);
  }
}
