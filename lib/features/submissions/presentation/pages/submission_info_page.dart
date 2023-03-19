import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/background_widgets/form_background.dart';

import '../../domain/entities/Submission.dart';

class SubmissionInfoPage extends StatelessWidget {
  const SubmissionInfoPage({super.key, required this.submission});
  final Submission submission;
  @override
  Widget build(BuildContext context) {
    return FormsBackGroundWidget(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Submission Info'),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Text(submission.content),
          Text(submission.dateWhenSubmitted.toString()),
          Text(submission.dateWhenToBeDeleted.toString()),
        ],
      ),
    ));
  }
}
