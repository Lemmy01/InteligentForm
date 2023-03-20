import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/features/submissions/data/models/submission_model.dart';
import 'package:inteligent_forms/features/submissions/domain/entities/Submission.dart';

import 'package:inteligent_forms/core/errors/failures.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repositories/submission_repository.dart';
import '../datasources/submission_api.dart';

class SubmissionRepositoryImpl implements SubmissionRepository {
  final SubmissionApi _submissionApi;

  SubmissionRepositoryImpl(this._submissionApi);
  @override
  Future<Either<Failure, void>> deleteSubmission(String id) async {
    try {
      await _submissionApi.deleteSubmission(id);
      return const Right(null);
    } on Exception catch (e) {
      return const Left(ServerFailure(
          failureMessage: AppStringFailuresMessages.unexpectedFailure));
    }
  }



  @override
  Future<Either<Failure, List<Submission>>> getSubmissions(
      String formId) async {
    try {
      return Right(
          await _submissionApi.getSubmissions(formId) as List<Submission>);
    } on Exception catch (e) {
      return const Left(ServerFailure(
          failureMessage: AppStringFailuresMessages.unexpectedFailure));
    }
  }

  @override
  Future<Either<Failure, void>> submitSubmission(Submission submission) async {
    try {
      _submissionApi.submitSubmission(submission as SubmissionModel);
      return const Right(null);
    } on Exception catch (e) {
      return const Left(ServerFailure(
          failureMessage: AppStringFailuresMessages.unexpectedFailure));
    }
  }

  @override
  Future<Either<Failure, void>> updateSubmission(Submission submission) async {
    try {
      _submissionApi.updateSubmission(submission as SubmissionModel);
      return const Right(null);
    } on Exception catch (e) {
      return const Left(ServerFailure(
          failureMessage: AppStringFailuresMessages.unexpectedFailure));
    }
  }
}
