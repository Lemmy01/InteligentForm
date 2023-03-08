import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/features/fill_form/domain/repositories/create_form_reposetory.dart';

import '../entities/form.dart';

class CreateForm {
  final CreateFormRepository repository;

  CreateForm(this.repository);

   Future<Either<Failure, void>> call({
    Form? form,
  }) async {
    return await repository.createForm();
  }
}