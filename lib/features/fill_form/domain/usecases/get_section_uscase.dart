import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/core/errors/failures.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/section.dart';

import '../repositories/fill_form_repository.dart';

class GetFormUsecase {
  final FillFormRepository repository;

  GetFormUsecase(this.repository);

  Future<Either<Failure, List<Section>>> call(String formId) async {
    return await repository.getFormSections(formId);
  }
}
