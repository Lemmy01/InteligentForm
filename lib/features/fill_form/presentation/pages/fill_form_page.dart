import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/background_widgets/fill_form_background_widget.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/features/fill_form/presentation/pages/preview_document_page.dart';

import 'fill_form_info_page.dart';

class FillFormPage extends StatelessWidget {
  const FillFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FillFormsBackGroundWidget(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text(
              AppStringConstants.fillFormPage,
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: AppBarStrings.fillForm,
                ),
                Tab(
                  text: AppStringConstants.previewDocument,
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              FillFormInfoPage(),
              PreviewDocumentPage(),
            ],
          ),
        ),
      ),
    );
  }
}
