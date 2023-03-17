import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/core/errors/failures.dart';
import 'package:inteligent_forms/core/utils/logger.dart';

import '../../../../core/utils/enums.dart';

class CreateFieldValidators {
  static Either<Failure, String> addChipValidate(
      String value, List<String> chips) {
    if (value.isEmpty) {
      Logger.info(
        'TextFieldWithChipsValidator',
        'TextFieldWithChipsValidator.validate: value is empty',
      );
      return Left(
        EmptyFieldFailure(
          failureMessage: AppStringFailuresMessages.emptyField,
        ),
      );
    } else if (chips.contains(value)) {
      Logger.info(
        'TextFieldWithChipsValidator',
        'TextFieldWithChipsValidator.validate: value already exists',
      );
      return Left(
        InvalidFieldFailure(
          failureMessage: AppStringFailuresMessages.fieldAlreadyExists,
        ),
      );
    } else {
      Logger.info(
        'TextFieldWithChipsValidator',
        'Has passed validation',
      );

      return const Right(AppStringConstants.valueAdded);
    }
  }

  static Either<Failure, String> createFieldValidate({
    required String label,
    required String keyWord,
    required FieldType fieldType,
    required List<String> options,
    required List<String> documentKeywords,
  }) {
    if (label.isEmpty) {
      return Left(
        EmptyFieldFailure(
          failureMessage: AppStringFailuresMessages.labelEmptyField,
        ),
      );
    } else if (keyWord.isEmpty) {
      return Left(
        EmptyFieldFailure(
          failureMessage: AppStringFailuresMessages.keywordEmptyField,
        ),
      );
    } else if (fieldType == FieldType.singleChoice ||
        fieldType == FieldType.multipleChoice) {
      if (options.isEmpty) {
        return Left(
          EmptyFieldFailure(
            failureMessage: AppStringFailuresMessages.optionsEmptyField,
          ),
        );
      } else if (documentKeywords.isEmpty) {
        return Left(
          EmptyFieldFailure(
            failureMessage:
                AppStringFailuresMessages.documentKeywordsEmptyField,
          ),
        );
      }
    } else if (documentKeywords.isEmpty) {
      return Left(
        EmptyFieldFailure(
          failureMessage: AppStringFailuresMessages.documentKeywordsEmptyField,
        ),
      );
    }
    return const Right(AppStringConstants.fieldCreated);
  }
}
