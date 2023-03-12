// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/helper_class/section_with_field_list_class.dart';
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
    List<SectionWithList>? sections,
  ) async {
    try {
      await api.createForm(
        title!,
        dataRetentionPeriod!,
        sections!,
      );
      return const Right(null);
    } catch (e) {
      return Left(Failure());
    }
  }
}
