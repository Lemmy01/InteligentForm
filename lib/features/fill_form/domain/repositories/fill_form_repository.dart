import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/core/errors/failures.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/section.dart';

import '../../../create_form/domain/entities/field.dart';
import '../../../create_form/domain/entities/form.dart';

abstract class FillFormRepository {
  Future<Either<Failure, Form>> getForm(
    String formId,
  );
  Future<Either<Failure, List<Section>>> getFormSections(
    String formId,
  );
  Future<Either<Failure, List<Field>>> getFormFields(
    String formId,
    String placeHolder,
  );
}
