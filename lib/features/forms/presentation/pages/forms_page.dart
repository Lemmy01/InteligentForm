import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/app_number_constants.dart';
import 'package:inteligent_forms/features/forms/domain/entities/form_entity.dart';
import 'package:inteligent_forms/features/forms/presentation/widgets/form_tile.dart';

import '../../../../core/background_widgets/create_field_background_widget.dart';
import '../../../create_form/presentation/pages/form_tab_controler_page.dart';

class FormsPage extends StatelessWidget {
  const FormsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CreateFieldBackGroundWidget(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FormTabController(),
                ),
              );
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppNumberConstants.pageHorizontalPadding,
              vertical: AppNumberConstants.pageVerticalPadding,
            ),
            child: Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                ),
                FormTile(
                  formEntity: FormEntity(
                    title: 'Titlu',
                    dynamicFieldNames: [
                      'neme',
                      'poimaine',
                      'pomine',
                      'pomine',
                      'pomine',
                      'pomine',
                      'pomine',
                      'pomine',
                    ],
                    dateAdded: DateTime.now(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
