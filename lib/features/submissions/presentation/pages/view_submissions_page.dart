import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/background_widgets/form_background.dart';
import 'package:inteligent_forms/core/constants/app_number_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';
import 'package:inteligent_forms/features/submissions/domain/entities/Submission.dart';
import 'package:inteligent_forms/features/submissions/presentation/widgets/submission_widget.dart';

import '../../../../core/constants/font_constants.dart';
import '../../../forms/domain/entities/form_entity.dart';

class ViewSubmissionsPage extends StatefulWidget {
  const ViewSubmissionsPage({super.key, required this.form});
  final FormEntity form;
  @override
  State<ViewSubmissionsPage> createState() => _ViewSubmissionsPageState();
}

class _ViewSubmissionsPageState extends State<ViewSubmissionsPage> {
  DateTime? dateSelected = DateTime.now();
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  List<Submission> submissionList = [
    Submission(
        content: 'content',
        dateWhenSubmitted: DateTime.now(),
        dateWhenToBeDeleted: DateTime.now(),
        listOfFields: []),
    Submission(
        content: 'content',
        dateWhenSubmitted: DateTime.now(),
        dateWhenToBeDeleted: DateTime.now(),
        listOfFields: []),
    Submission(
        content: 'content',
        dateWhenSubmitted: DateTime.now(),
        dateWhenToBeDeleted: DateTime.now(),
        listOfFields: []),
  ];

  @override
  Widget build(BuildContext context) {
    return FormsBackGroundWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.form.title,
            style: TextStyle(
              fontSize: FontConstants.largeFontSize,
              color: Theme.of(context).colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppNumberConstants.pageHorizontalPadding,
            vertical: AppNumberConstants.pageVerticalPadding,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSizedBoxes.kMediumBox(),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Submissions',
                        style: TextStyle(
                          fontSize: FontConstants.mediumFontSize,
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.filter_list,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      onTap: () async {
                        dateSelected =
                            await _filtersDialog(context, dateSelected!) ??
                                dateSelected;
                        setState(() {});
                        //todo: add filter with block suiii
                      },
                    ),
                  ],
                ),
                AppSizedBoxes.kMediumBox(),
                MyTextField(
                  controller: controller,
                  hintText: "Search",
                ),
                AppSizedBoxes.kMediumBox(),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: submissionList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    if (dateSelected != null) {
                      if (submissionList[index].dateWhenSubmitted.day ==
                              dateSelected!.day &&
                          submissionList[index].dateWhenSubmitted.month ==
                              dateSelected!.month &&
                          submissionList[index].dateWhenSubmitted.year ==
                              dateSelected!.year) {
                        return SubmissionCard(
                          submission: submissionList[index],
                        );
                      }
                    }

                    return const SizedBox();
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<DateTime?> _filtersDialog(BuildContext context, DateTime dateSelected) {
  return showDatePicker(
    context: context,
    firstDate: DateTime(2000),
    initialDate: dateSelected,
    lastDate: DateTime(2100),
  );
}
