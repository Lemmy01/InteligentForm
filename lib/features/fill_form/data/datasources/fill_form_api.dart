import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:inteligent_forms/core/errors/exceptions.dart';

import '../../../create_form/data/models/field_model.dart';
import '../../../create_form/data/models/form_model.dart';
import '../../../create_form/data/models/section_model.dart';

class FillFormApi {
  final FirebaseFirestore firebase;

  FillFormApi(this.firebase);

  Future<FormModel> getForm(String formId) async {
    try {
      final doc = await firebase.collection('forms').doc(formId).get();

      return FormModel.fromJson(doc.data()!);
    } on FirebaseException catch (e) {
      throw MediumException(runtimeType, e.code);
    }
  }

  Future<List<SectionModel>> getSections(String formId) async {
    try {
      final streamDocs = await firebase
          .collection('sections')
          .where('formId', isEqualTo: formId)
          .get();
      final listOfModels =
          streamDocs.docs.map((e) => SectionModel.fromJson(e.data())).toList();
      return listOfModels;
    } on FirebaseException catch (e) {
      throw MediumException(runtimeType, e.code);
    }
  }

  Future<List<FieldModel>> getFields(String formId, String placeholder) async {
    try {
      final streamDocs = await firebase
          .collection('fields')
          .where('formId', isEqualTo: formId)
          .where('keyWord', isEqualTo: placeholder)
          .get();
      final listOfModels =
          streamDocs.docs.map((e) => FieldModel.fromJson(e.data())).toList();
      return listOfModels;
    } on FirebaseException catch (e) {
      throw MediumException(runtimeType, e.code);
    }
  }
}
