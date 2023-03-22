import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;
import 'package:inteligent_forms/core/errors/exceptions.dart';
import 'package:inteligent_forms/features/fill_form/data/models/submision_model.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/constants/firestore_constants.dart';
import '../../../create_form/data/models/field_model.dart';
import '../../../create_form/data/models/form_model.dart';
import '../../../create_form/data/models/section_model.dart';

class FillFormApi {
  final FirebaseFirestore firebase;

  FillFormApi(this.firebase);

  Future<FormModel> getForm(String formId) async {
    try {
      final doc = await firebase
          .collection(AppFirestoreCollectionNames.forms)
          .doc(formId)
          .get();

      return FormModel.fromMap(doc.data()!);
    } on FirebaseException catch (e) {
      throw MediumException(runtimeType, e.code);
    }
  }

  Future<List<SectionModel>> getSections(String formId) async {
    try {
      final streamDocs = await firebase
          .collection(AppFirestoreCollectionNames.sections)
          .where(AppFirestoreFieldsFields.formId, isEqualTo: formId)
          .get();
      final listOfModels =
          streamDocs.docs.map((e) => SectionModel.fromMap(e.data())).toList();
      return listOfModels;
    } on FirebaseException catch (e) {
      throw MediumException(runtimeType, e.code);
    }
  }

  Future<FieldModel> getFields(String formId, String placeholder) async {
    try {
      final doc = await firebase
          .collection(AppFirestoreCollectionNames.fields)
          .where(AppFirestoreFieldsFields.formId, isEqualTo: formId)
          .where(AppFirestoreFieldsFields.keyWord, isEqualTo: placeholder)
          .get();

      final field = FieldModel.fromMap(doc.docs.first.data());
      return field;
    } on FirebaseException catch (e) {
      throw MediumException(runtimeType, e.code);
    }
  }

  Future<void> submitForm(
    String formId,
    String content,
    DateTime dateWhenSubmited,
    DateTime dateToBeDeleted,
    List<String> listOfFields,
  ) async {
    try {
      final id =
          firebase.collection(AppFirestoreCollectionNames.submissions).doc().id;
      final SubmisionModel formSubmisionModel = SubmisionModel(
        id: id,
        formId: formId,
        content: content,
        dateWhenSubmitted: dateWhenSubmited,
        dateWhenToBeDeleted: dateToBeDeleted,
        listOfFields: listOfFields,
      );
      await firebase
          .collection(AppFirestoreCollectionNames.submissions)
          .doc(id)
          .set(
            formSubmisionModel.toJson(),
          );
    } on FirebaseException catch (e) {
      throw MediumException(runtimeType, e.code);
    }
  }

  Future<Map<String, dynamic>> analyzeDocument() async {
    const String endpoint = ApiConstants.ENDPOINT;
    const String apiKey = ApiConstants.KEY;
    //TODO George Luta : schimba
    const documentUrl = ApiConstants.TempImageLink;

    const modelId = ApiConstants.MODEL_ID;

    final url = Uri.parse(
        '$endpoint/formrecognizer/documentModels/$modelId:analyze?api-version=2022-08-31');

    final headers = {
      'Content-Type': 'application/json',
      'Ocp-Apim-Subscription-Key': apiKey,
    };

    final body = json.encode({'urlSource': documentUrl});

    final response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    log('Response status: ${response.statusCode}');

    if (response.statusCode == 202) {
      final resultUrl = response.headers['operation-location'];
      log('Result url: $resultUrl');
      return await fetchResult(resultUrl!, headers);
    } else {
      throw Exception('Failed to analyze document: ${response.body}');
    }
  }

  Future<Map<String, dynamic>> fetchResult(
    String resultUrl,
    Map<String, String> headers,
  ) async {
    final url = Uri.parse(resultUrl);

    log('Fetching result from $url');
    final response = await http.get(url, headers: headers);

    log('Response status: ${response.statusCode}');

    if (response.statusCode == 200) {
      while (json.decode(response.body)['status'] == 'notStarted' ||
          json.decode(response.body)['status'] == 'running') {
        Future.delayed(const Duration(seconds: 1));
        return await fetchResult(resultUrl, headers);
      }

      return json.decode(response.body);
    } else {
      throw Exception('Failed to fetch result: ${response.body}');
    }
  }
}
