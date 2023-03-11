import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:inteligent_forms/features/create_form/data/datasources/create_form_api.dart';
import 'package:inteligent_forms/features/create_form/data/models/form_model.dart';

import 'package:mockito/mockito.dart';

void main() {
  late CreateFormApiImpl createFormApiImpl;
  late FakeFirebaseFirestore firestore;

  setUp(() {
    firestore = FakeFirebaseFirestore();

    createFormApiImpl = CreateFormApiImpl(firestore);
  });

  group("Create Form", () {
    final FormModel formModel = FormModel(
      title: "title",
      dataRetentionPeriod: 1,
    );

    CollectionReference forms = firestore.collection('forms');
    test("should create form", () async {
      // arrange
      when(createFormApiImpl.createForm(
        "title",
        1,
        [],
      )).thenAnswer((_) async => forms.add(formModel.toMap()));
      // act
      await createFormApiImpl.createForm(
        "title",
        1,
        [],
      );
      // assert
      verify(createFormApiImpl.createForm(
        "title",
        1,
        [],
      ));
    });
  });
}
