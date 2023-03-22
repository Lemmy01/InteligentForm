import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/core/utils/extensions.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

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
    if (value is String && value.isNotEmpty) {
      content = content.replaceAll('<$key>', value);
    } else if (value is DateTime) {
      content = content.replaceAll('<$key>', value.toDateString());
    }
  });
  while (content.isNotEmpty) {
    int index1 = content.indexOf('<');
    int index2 = content.indexOf('>');
    if (index1 != -1 && index2 != -1) {
      content = content.replaceRange(index1, index2 + 1, '_');
    } else {
      break;
    }
  }
  return content;
}

Future<void> createPDF() async {
  PdfDocument document = PdfDocument();
  final page = document.pages.add();
  page.graphics.drawString(
      'Hello World!', PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: const Rect.fromLTWH(0, 0, 200, 100));

  List<int> bytes = await document.save();
  saveAndLaunchFile(bytes, 'output.pdf');
  document.dispose();
}

Future<void> saveAndLaunchFile(List<int> bytes, String fileName) async {
  final tempDir = await getTemporaryDirectory();
  final file = File('${tempDir.path}/$fileName');
  await file.writeAsBytes(bytes, flush: true);
  OpenFile(file.path, true);
}
