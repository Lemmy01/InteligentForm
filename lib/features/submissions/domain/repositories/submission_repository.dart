import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/Submission.dart';

abstract class SubmissionRepository {
  Future<Either<Failure, Submission>> submitSubmission(Submission submission);

  Future<Either<Failure, List<Submission>>> getSubmissions(String formId);

  Future<Either<Failure, Submission>> getSubmission(String id);

  Future<Either<Failure, Submission>> updateSubmission(Submission submission);

  Future<Either<Failure, Submission>> deleteSubmission(String id);
}
