import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inteligent_forms/features/create_form/presentation/pages/create_pages/create_field_page.dart';
import 'package:inteligent_forms/features/create_form/presentation/widgets/field_card.dart';
import 'package:sizer/sizer.dart';

import '../../bloc/create_form_bloc/create_form_bloc.dart';
import '../../bloc/create_form_bloc/create_form_state.dart';

class ViewFieldPage extends StatefulWidget {
  const ViewFieldPage({super.key});

  @override
  State<ViewFieldPage> createState() => _ViewFieldPageState();
}

class _ViewFieldPageState extends State<ViewFieldPage> {
  void addField() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CreateFieldPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
        heroTag: 'view_fields_page',
        onPressed: addField,
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<CreateFormBloc, CreateFormState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.only(top: 1.h),
            child: ListView.builder(
              itemCount: state.fields.length,
              itemBuilder: (BuildContext context, int index) {
                return FieldCard(
                  field: state.fields[index],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
