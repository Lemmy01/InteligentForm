// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/core/errors/exceptions.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/field.dart';
import '../../domain/entities/section.dart';
import '../../domain/repositories/create_form_repository.dart';
import '../datasources/create_form_api.dart';

class CreateFormRepositoryImpl extends CreateFormRepository {
  final CreateFormApi api;
  CreateFormRepositoryImpl({
    required this.api,
  });
  @override
  Future<Either<Failure, void>> createForm(
    String? title,
    int? dataRetentionPeriod,
    List<Section>? sections,
    List<Field>? fields,
  ) async {
    try {
      await api.createForm(
        title!,
        dataRetentionPeriod!,
        sections!,
        fields!,
      );
      return const Right(null);
    } on MediumException catch (e) {
      return Left(MediumFailure(failureMessage: e.message));
    }
  }
}
