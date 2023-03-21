import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:inteligent_forms/core/constants/font_constants.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
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
      child: SizedBox(
        height: 30.h,
        width: 50.w,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: GestureDetector(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStringConstants.submission,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w800,
                          fontSize: FontConstants.mediumFontSize,
                        ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  AppSizedBoxes.kSmallBox(),
                  for (final field in submission.listOfFields)
                    Text(
                      field,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  AppSizedBoxes.kSmallBox(),
                  Text(
                    submission.getDate,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
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
