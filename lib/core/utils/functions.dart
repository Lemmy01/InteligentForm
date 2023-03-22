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
    if (index1 != -1 && index2 != -1) {
      placeholder = string.substring(index1 + 1, index2);
      try {
        fields.add(await datasource.getFields(formId, placeholder));
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
    string = string.substring(index2 + 1);
  }
  return Right(fields);
}

String replaceWithString(
  Map<String, dynamic> parametersMap,
  String content,
) {
  parametersMap.forEach((key, value) {
    content = content.replaceAll('<$key>', value);
  });
  return content;
}
