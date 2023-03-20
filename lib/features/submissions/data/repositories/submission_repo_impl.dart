import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/core/errors/exceptions.dart';
import 'package:inteligent_forms/core/errors/failures.dart';
import 'package:inteligent_forms/features/submissions/domain/entities/Submission.dart';
import 'package:inteligent_forms/features/submissions/domain/repositories/submission_repository.dart';

import '../datasources/submission_api.dart';
import '../models/submission_model.dart';

class SubmissionRepoImpl implements SubmissionRepository {
  final SubmissionApi submissionApi;

  SubmissionRepoImpl({required this.submissionApi});

  @override
  Future<Either<Failure, void>> deleteSubmission(String id) async {
    try {
      await submissionApi.deleteSubmission(id);
      return const Right(null);
    } on MediumException catch (e) {
      return Left(
        MediumFailure(
          failureMessage: e.message,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Submission>>> getSubmissions(
      String formId) async {
    try {
      final submissions = await submissionApi.getSubmissions(formId);
      return Right(submissions as List<Submission>);
    } on MediumException catch (e) {
      return Left(
        MediumFailure(
          failureMessage: e.message,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> submitSubmission(Submission submission) async {
    try {
      await submissionApi.submitSubmission(submission as SubmissionModel);
      return const Right(null);
    } on MediumException catch (e) {
      return Left(
        MediumFailure(
          failureMessage: e.message,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> updateSubmission(Submission submission) async {
    try {
      await submissionApi.updateSubmission(submission as SubmissionModel);
      return const Right(null);
    } on MediumException catch (e) {
      return Left(
        MediumFailure(
          failureMessage: e.message,
        ),
      );
    }
  }
}
