import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/field.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/form.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/section.dart';
import 'package:inteligent_forms/features/fill_form/domain/entities/section_with_field.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/functions.dart';
import '../../domain/repositories/fill_form_repository.dart';
import '../datasources/fill_form_api.dart';

class FillFormRepositoryImpl implements FillFormRepository {
  final FillFormApi datasource;

  FillFormRepositoryImpl({
    required this.datasource,
  });

  @override
  Future<Either<Failure, Form>> getForm(String formId) async {
    try {
      final result = await datasource.getForm(formId);
      return Right(result);
    } on MediumFailure catch (e) {
      return Left(
        MediumFailure(
          failureMessage: e.failureMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Field>> getFormFields(
      String formId, String placeHolder) async {
    try {
      final result = await datasource.getFields(formId, placeHolder);
      return Right(result);
    } on MediumFailure catch (e) {
      return Left(
        MediumFailure(
          failureMessage: e.failureMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> submitFormSubmission(
    String formId,
    String content,
    DateTime dateWhenSubmited,
    DateTime dateToBeDeleted,
  ) async {
    try {
      await datasource.submitForm(
        formId,
        content,
        dateWhenSubmited,
        dateToBeDeleted,
      );
      return const Right(null);
    } on MediumFailure catch (e) {
      return Left(
        MediumFailure(
          failureMessage: e.failureMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<SectionWithField>>> getSectionWithField(
      String formId) async {
    late final List<Section> sections;
    List<Field> fields = [];
    List<SectionWithField> sectionWithFields = [];

    try {
      sections = await datasource.getSections(formId);
    } on MediumFailure catch (e) {
      return Left(
        MediumFailure(
          failureMessage: e.failureMessage,
        ),
      );
    }
    for (final section in sections) {
      final result = (await getFields(section.content, formId, datasource)).fold(
        (l) => l,
        (r) => r,
      );
      if (result is MediumFailure) {
        return Left(result);
      } else {
        fields.addAll(result as List<Field>);
      }
      sectionWithFields.add(
        SectionWithField(
          content: section.content,
          scanType: section.scanType,
          sectionNumber: section.sectionNumber,
          fields: fields,
        ),
      );
      fields = [];
    }
    return Right(sectionWithFields);
  }
}

