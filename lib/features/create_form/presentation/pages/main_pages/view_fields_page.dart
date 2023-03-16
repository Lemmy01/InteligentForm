import 'package:flutter/material.dart';
import 'package:inteligent_forms/features/create_form/presentation/pages/create_pages/create_field_page.dart';
import 'package:inteligent_forms/features/create_form/presentation/widgets/field_card.dart';
import 'package:sizer/sizer.dart';

import '../../../domain/entities/field.dart';

class ViewFieldPage extends StatefulWidget {
  const ViewFieldPage({super.key});

  @override
  State<ViewFieldPage> createState() => _ViewFieldPageState();
}

class _ViewFieldPageState extends State<ViewFieldPage> {
  int sectionNumber = 0;
  List<Field> fields = [
    Field(
      keyWord: 'keyWord',
      mandatory: false,
      fieldType: 'fieldType',
      docKeys: [],
      label: 'label',
    ),
  ];
  void addField() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const CreateFieldPage()));
    //push to a createFieldPage
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
        heroTag: 'view_fields_page',
        onPressed: addField,
        //TODO: Add onPressed (Create Section add to a list of sections models)
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 1.h),
        child: ListView.builder(
          //Should be a list of sections
          itemCount: fields.length,
          itemBuilder: (BuildContext context, int index) {
            return FieldCard(
              field: fields[index],
            );
          },
        ),
      ),
    );
  }
}
