import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/Submission.dart';
import '../repositories/submission_repository.dart';

class SubmissionUscase {
  final SubmissionRepository _submissionRepository;

  SubmissionUscase(this._submissionRepository);

  Future<Either<Failure, List<Submission>>> getSubmissions(
      String formId) async {
    return await _submissionRepository.getSubmissions(formId);
  }

  Future<Either<Failure, Submission>> submitSubmission(
      Submission submission) async {
    return await _submissionRepository.submitSubmission(submission);
  }

  Future<Either<Failure, Submission>> getSubmission(String id) async {
    return await _submissionRepository.getSubmission(id);
  }

  Future<Either<Failure, Submission>> updateSubmission(
      Submission submission) async {
    return await _submissionRepository.updateSubmission(submission);
  }

  Future<Either<Failure, Submission>> deleteSubmission(String id) async {
    return await _submissionRepository.deleteSubmission(id);
  }
}
