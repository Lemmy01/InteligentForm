import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/background_widgets/form_background.dart';

class SubmissionInfoPage extends StatelessWidget {
  const SubmissionInfoPage({
    super.key,
    //required this.submission
  });
  //final Submission submission;
  @override
  Widget build(BuildContext context) {
    return FormsBackGroundWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Submission Info Page'),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [const Icon(Icons.picture_as_pdf), Container()],
          ),
        ),
      ),
    );
  }
}
