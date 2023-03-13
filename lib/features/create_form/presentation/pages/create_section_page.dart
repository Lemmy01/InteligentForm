import 'package:flutter/material.dart';

import '../../../../core/background_widgets/create_field_background_widget.dart';

class CreateSectionPage extends StatefulWidget {
  const CreateSectionPage({super.key});

  @override
  State<CreateSectionPage> createState() => _CreateSectionPageState();
}

class _CreateSectionPageState extends State<CreateSectionPage> {
  TextEditingController requestController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CreateFieldBackGroundWidget(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: const Text('Create Field'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: requestController,
                  decoration: const InputDecoration(
                    hintText: "Request",
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
