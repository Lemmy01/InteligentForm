import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:inteligent_forms/features/create_form/data/models/field_model.dart';

import '../../../../core/helper_class/section_with_field_list_class.dart';
import '../../domain/entities/field.dart';
import '../models/form_model.dart';
import '../models/section_model.dart';

abstract class CreateFormApi {
  Future<void> createForm(
    String title,
    int dataRetentionPeriod,
    List<SectionWithList> sections,
  );
}

class CreateFormApiImpl implements CreateFormApi {
  final FirebaseFirestore firebase;

  CreateFormApiImpl(this.firebase);

  @override
  Future<void> createForm(String title, int dataRetentionPeriod,
      List<SectionWithList> sections) async {
    final CollectionReference forms = firebase.collection('forms');
    final doc = await forms.add(FormModel(
      title: title,
      dataRetentionPeriod: dataRetentionPeriod,
    ).toMap());
    forms.doc(doc.id).update({'id': doc.id});

    for (final section in sections) {
      await addSection(section, doc.id);
    }
    return await null;
  }

  Future<void> addSection(
    SectionWithList sectionWithList,
    String formId,
  ) async {
    final CollectionReference sections = firebase.collection('sections');
    final SectionModel sectionModel = SectionModel(
      formId: formId,
      content: sectionWithList.content,
      scanType: sectionWithList.scanType,
      sectionNumber: sectionWithList.sectionNumber,
    );
    final doc = await sections.add(sectionModel.toMap());
    sections.doc(doc.id).update({'id': doc.id});

    for (final field in sectionWithList.fields!) {
      await addField(field, doc.id);
    }

    return await null;
  }

  Future<void> addField(
    Field field,
    String sectionId,
  ) async {
    final CollectionReference fields = firebase.collection('fields');
    final FieldModel fieldModel = FieldModel(
      sectionId: sectionId,
      docKeys: field.docKeys,
      fieldType: field.fieldType,
      label: field.label,
      keyWord: field.keyWord,
      mandatory: field.mandatory,
    );
    final doc = await fields.add(fieldModel.toMap());
    fields.doc(doc.id).update({'id': doc.id});
    return await null;
  }
}
