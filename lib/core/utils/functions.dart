import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../../features/create_form/data/models/field_model.dart';
import '../../features/create_form/domain/entities/field.dart';
import '../../features/fill_form/data/datasources/fill_form_api.dart';
import '../errors/failures.dart';

Future<Either<Failure, List<Field>>> getFields(
    String string, String formId, FillFormApi datasource) async {
  List<FieldModel> fields = [];
  int index1;
  int index2;
  String placeholder;
  while (string.isNotEmpty) {
    index1 = string.indexOf('<');
    index2 = string.indexOf('>');
    log("string: $string, index1: $index1, index2: $index2");
    if (index1 != -1 && index2 != -1) {
      placeholder = string.substring(index1 + 1, index2);
      try {
        fields.add(await datasource.getFields(formId, placeholder));
        log('here2');
      } on MediumFailure catch (e) {
        return Left(
          MediumFailure(
            failureMessage: e.failureMessage,
          ),
        );
      }
    } else {
      break;
    }
    log("string: $string");
    string = string.substring(index2 + 1);
  }
  log('here');
  return Right(fields);
}

String replaceWithString(
  Map<String, dynamic> parametersMap,
  String content,
) {
  parametersMap.forEach((key, value) {
    content = content.replaceAll('<$key>', value);
  });
  log("content: $content");
  return content;
}
