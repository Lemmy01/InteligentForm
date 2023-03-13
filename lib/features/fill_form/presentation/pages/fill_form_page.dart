import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/features/fill_form/presentation/pages/preview_document_page.dart';

import 'fill_form_info_page.dart';

class FillFormPage extends StatelessWidget {
  const FillFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppStringContants.fillFormPage,
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: AppBarStrings.fillForm,
              ),
              Tab(
                text: AppStringContants.previewDocument,
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
    );
  }
}
