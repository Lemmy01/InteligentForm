import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/background_widgets/form_background.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/utils/functions.dart';
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
        body: Stack(
          alignment: Alignment.topRight,
          children: [
            Padding(
              padding: EdgeInsets.all(5.w),
              child: GestureDetector(
                child: Icon(
                  Icons.picture_as_pdf,
                  color: Colors.white,
                  size: 10.w,
                ),
                onTap: () {
                  //TODO: Implement PDF generation
                  createPDF();
                },
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(5.w),
                height: 50.h,
                width: 80.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFEFEFEF),
                  borderRadius: BorderRadius.circular(5.w),
                ),
                child: Text(submission.content),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
