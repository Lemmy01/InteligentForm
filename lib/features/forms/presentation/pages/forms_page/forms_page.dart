import 'package:flutter/material.dart';

import '../../../../../core/constants/string_constants.dart';
import '../../../../create_form/presentation/pages/my_tab_controler_page.dart';

class FormsPage extends StatelessWidget {
  const FormsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MyTabController()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: const Center(
        child: Text(AppCreateFormString.formPage),
      ),
    );
  }
}
