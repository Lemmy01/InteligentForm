import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/core/errors/failures.dart';

class TextFieldWithChipsValidator {
  static Either<Failure, void> validate(String value, List<String> chips) {
    if (value.isEmpty && chips.isEmpty) {
      return Left(
        EmptyFieldFailure(
          failureMessage: AppStringFailuresMessages.emptyField,
        ),
      );
    } else {
      return const Right(null);
    }
  }
}
