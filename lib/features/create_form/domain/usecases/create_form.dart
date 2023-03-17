import 'package:dartz/dartz.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/errors/failures.dart';
import '../entities/field.dart';
import '../entities/section.dart';
import '../repositories/create_form_repository.dart';
import '../validators/create_field_validators.dart';

class CreateForm {
  final CreateFormRepository repository;

  CreateForm(this.repository);

  Future<Either<Failure, String>> call({
    required String title,
    required int dataRetentionPeriod,
    required List<Section> sections,
    required List<Field> fields,
  }) async {
    CreateFieldValidators.createVormValidate(
      formName: title,
      dataRetentionPeriod: dataRetentionPeriod,
      numberOfFields: fields.length,
      numberOfSections: sections.length,
    ).fold(
      (l) => l,
      (r) async {
        return await repository.createForm(
          title,
          dataRetentionPeriod,
          sections,
          fields,
        );
      },
    );

    return const Right(AppStringConstants.formCreated);
  }
}
