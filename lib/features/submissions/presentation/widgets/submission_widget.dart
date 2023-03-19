import 'package:flutter/material.dart';
import 'package:inteligent_forms/features/submissions/domain/entities/Submission.dart';
import 'package:sizer/sizer.dart';

import '../pages/submission_info_page.dart';

class SubmissionCard extends StatelessWidget {
  const SubmissionCard({
    super.key,
    required this.submission,
  });
  final Submission submission;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(3.w),
        child: GestureDetector(
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Text("Submission "),
              const Spacer(),
              Text(
                submission.getDate,
              ),
            ],
          ),
          onTap: () async {
            //TODO: Add onTap(Navigate to SectionPages)
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SubmissionInfoPage(
                  submission: submission,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
