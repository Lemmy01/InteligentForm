import 'package:dartz/dartz.dart';

import '../entities/form.dart';

abstract class CreateFormRepository {
  Future<Either<Failure, void>> createForm();
}

class Failure {
}
