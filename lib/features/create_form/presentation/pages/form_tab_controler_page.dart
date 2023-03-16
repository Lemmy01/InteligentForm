import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/background_widgets/create_form_background_widget.dart';
import 'package:inteligent_forms/features/create_form/presentation/pages/main_pages/view_fields_page.dart';
import 'package:inteligent_forms/features/create_form/presentation/pages/main_pages/view_sections_page.dart';

import '../../../../core/constants/string_constants.dart';
import 'main_pages/create_form_page.dart';

class FormTabController extends StatefulWidget {
  const FormTabController({super.key});

  @override
  State<FormTabController> createState() => _FormTabControllerState();
}

class _FormTabControllerState extends State<FormTabController> {
  final index = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CreateFormBackGroundWidget(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                AppCreateFormString.createForm,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              backgroundColor: Colors.transparent,
              bottom: const TabBar(
                tabs: [
                  Tab(
                    text: AppCreateFormString.formDetailes,
                  ),
                  Tab(
                    text: AppCreateFormString.section,
                  ),
                  Tab(
                    text: AppCreateFormString.field,
                  ),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                CreateFormPage(),
                ViewSectionsPage(),
                ViewFieldPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
