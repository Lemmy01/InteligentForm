import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:inteligent_forms/features/create_form/data/models/field_model.dart';

import '../../domain/entities/field.dart';
import '../../domain/entities/section.dart';
import '../models/form_model.dart';
import '../models/section_model.dart';

abstract class CreateFormApi {
  Future<void> createForm(
    String title,
    int dataRetentionPeriod,
    List<Section> sections,
    List<Field> fields,
  );
}

class CreateFormApiImpl implements CreateFormApi {
  final FirebaseFirestore firebase;

  CreateFormApiImpl(this.firebase);

  @override
  Future<void> createForm(
    String title,
    int dataRetentionPeriod,
    List<Section> sections,
    List<Field> fields,
  ) async {
    final CollectionReference forms = firebase.collection('forms');
    final id = forms.doc().id;
    await forms.add(
      FormModel(
        title: title,
        dataRetentionPeriod: dataRetentionPeriod,
        id: id,
      ).toMap(),
    );

    for (final section in sections) {
      await addSection(section, id);
    }
    for (final field in fields) {
      await addField(field, id);
    }
    return await null;
  }

  Future<void> addSection(
    Section section,
    String formId,
  ) async {
    final CollectionReference sections = firebase.collection('sections');
    final String id = sections.doc().id;
    final SectionModel sectionModel = SectionModel(
      formId: formId,
      id: id,
      content: section.content,
      scanType: section.scanType,
      sectionNumber: section.sectionNumber,
    );
    await sections.add(sectionModel.toMap());

    return await null;
  }

  Future<void> addField(
    Field field,
    String formId,
  ) async {
    final CollectionReference fields = firebase.collection('fields');
    final String id = fields.doc().id;
    final FieldModel fieldModel = FieldModel(
      id: id,
      formId: formId,
      docKeys: field.docKeys,
      fieldType: field.fieldType,
      label: field.label,
      keyWord: field.keyWord,
      mandatory: field.mandatory,
    );
    await fields.add(fieldModel.toMap());

    return await null;
  }
}
