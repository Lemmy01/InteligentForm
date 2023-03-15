import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/field.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/form.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/section.dart';

import '../../../../core/errors/failures.dart';
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
  Future<Either<Failure, List<Field>>> getFormFields(
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
  Future<Either<Failure, List<Section>>> getFormSections(String formId) async {
    try {
      final result = await datasource.getSections(formId);
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
  Future<Either<Failure, void>> submitForm(
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
        dateToBeDeleted,);
      return const Right(null);
    } on MediumFailure catch (e) {
      return Left(
        MediumFailure(
          failureMessage: e.failureMessage,
        ),
      );
    }
  }
}
