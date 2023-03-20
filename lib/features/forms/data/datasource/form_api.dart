import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/core/errors/exceptions.dart';
import 'package:inteligent_forms/features/create_form/data/models/form_model.dart';

class FormApi {
  final FirebaseFirestore firestore;

  FormApi({required this.firestore});

  Future<List<FormModel>> getForms() async {
    try {
      final forms = await firestore.collection('forms').get();
      return forms.docs.map((e) => FormModel.fromMap(e.data())).toList();
    } on FirebaseException {
      throw MediumException(
          runtimeType, AppStringFailuresMessages.unexpectedFailure);
    }
  }

  Future<void> deleteForm(String id) async {
    try {
      await firestore.collection('forms').doc(id).delete();
    } on FirebaseException {
      throw MediumException(
          runtimeType, AppStringFailuresMessages.unexpectedFailure);
    }
  }
}
