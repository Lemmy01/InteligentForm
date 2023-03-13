import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/background_widgets/create_form_background_widget.dart';
import 'package:inteligent_forms/features/create_form/presentation/pages/view_fields_page.dart';
import 'package:inteligent_forms/features/create_form/presentation/pages/view_sections_page.dart';

import 'create_form_page.dart';

class MyTabController extends StatefulWidget {
  const MyTabController({super.key});

  @override
  State<MyTabController> createState() => _MyTabControllerState();
}

class _MyTabControllerState extends State<MyTabController> {
  final index = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CreateFormBackGroundWidget(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            floatingActionButton: index == 2
                ? FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.save),
                  )
                : null,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'Create Form',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              backgroundColor: Colors.transparent,
              bottom: const TabBar(
                tabs: [
                  Tab(
                    text: 'Form Details',
                  ),
                  Tab(
                    text: 'Sections',
                  ),
                  Tab(
                    text: 'Fields',
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
