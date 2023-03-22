import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inteligent_forms/core/errors/failures.dart';
import 'package:inteligent_forms/features/fill_form/domain/entities/section_with_field.dart';

import '../repositories/fill_form_repository.dart';

class GetFormUsecase {
  final FillFormRepository repository;

  GetFormUsecase(this.repository);

  Future<Either<Failure, List<SectionWithField>>> getSectionsWithFields(
      String formId) async {
    return await repository.getSectionWithField(formId);
  }

  Future<Either<Failure, void>> submitFormSubmission(
    String formId,
    String content,
    DateTime dateWhenSubmited,
    DateTime dateToBeDeleted,
    List<String> listOfFields,
  ) async {
    return await repository.submitFormSubmission(
      formId,
      content,
      dateWhenSubmited,
      dateToBeDeleted,
      listOfFields,
    );
  }

  Future<Either<Failure, Map<String, dynamic>>> uploadImageToFirebaseAndFilter({
    required ImageSource imageSource,
    required SectionWithField section,
  }) async {
    try {
      final Map<String, dynamic> filteredResult = {};

      final file = await ImagePicker().pickImage(
        source: imageSource,
      );

      if (file != null) {
        File imageFile = File(file.path);

        (await repository.uploadImageToFirebase(
          file: imageFile,
        ))
            .fold((l) => l, (r) {
          if (r.containsKey('analyzeResult')) {
            log(r['analyzeResult'].toString());
            if (r['analyzeResult'].containsKey('keyValuePairs')) {
              log('222');
              for (final field in section.fields) {
                log('333');
                for (final documentKeword in field.docKeys) {
                  log('444');

                  for (final pair in r['analyzeResult']['keyValuePairs']) {
                    log('555');
                    if (pair.containsKey('key') && pair.containsKey('value')) {
                      log('666');
                      if (pair['key'].containsKey('content') &&
                          pair['value'].containsKey('content')) {
                        log('------');
                        log(pair['key']['content']);
                        log(documentKeword);
                        log('------');
                        for (final apiDocKey in makeListFromString(
                            pair['key']['content'], '/')) {
                          log('keyValue: $apiDocKey');
                          if (apiDocKey == documentKeword) {
                            log('888');
                            filteredResult[field.placeholderKeyWord] =
                                pair['value']['content'];
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        });
//978X0J9PWEYHUkvxRWSl

        log('filteredResult: $filteredResult');
        return Right(filteredResult);
      }

      return Right(filteredResult);
    } on Exception catch (e) {
      return Left(
        MediumFailure(
          failureMessage: e.toString(),
        ),
      );
    }
  }
}

List<String> makeListFromString(String string, String separator) {
  List<String> list = [];
  if (string.contains(separator)) {
    list = string.split(separator);
  } else {
    list.add(string);
  }
  return list;
}
