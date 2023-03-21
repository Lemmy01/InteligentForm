import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';
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
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            // An action can be bigger than the others.
            flex: 2,
            onPressed: (_) {
              //TODO: delete Submision
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          child: GestureDetector(
            child: Column(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Text("Submission "),
                for (final field in submission.listOfFields)
                  Column(
                    children: [
                      Text(
                        field,
                      ),
                      AppSizedBoxes.kSmallBox(),
                    ],
                  ),
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
      ),
    );
  }
}
