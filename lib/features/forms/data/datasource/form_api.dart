import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:inteligent_forms/core/constants/firestore_constants.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/core/errors/exceptions.dart';
import 'package:inteligent_forms/features/create_form/data/models/form_model.dart';

class FormApi {
  final FirebaseFirestore firestore;
  final _userId = FirebaseAuth.instance.currentUser!.uid;
  FormApi({required this.firestore});

  Future<List<FormModel>> getForms() async {
    try {
      final forms = await firestore
          .collection('forms')
          .where(
            AppFirestoreFormsFields.userId,
            isEqualTo: _userId,
          )
          .get();
      List<FormModel> a = [];
      for (final doc in forms.docs) {
        log(doc.data().toString());
        a.add(FormModel.fromMap(doc.data()));
      }

      return a;
    } on FirebaseException {
      throw MediumException(
          runtimeType, AppStringFailuresMessages.unexpectedFailure);
    }
  }

  Future<void> deleteForm(String id) async {
    try {
      await firestore.collection('forms').doc(id).delete();
      await firestore
          .collection('submissions')
          .where(AppFirestoreFieldsFields.formId, isEqualTo: id)
          .get()
          .then((value) => value.docs.forEach((element) {
                element.reference.delete();
              }));
    } on FirebaseException {
      throw MediumException(
          runtimeType, AppStringFailuresMessages.unexpectedFailure);
    }
  }
}
