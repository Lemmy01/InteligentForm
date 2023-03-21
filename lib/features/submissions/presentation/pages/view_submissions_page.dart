import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inteligent_forms/core/background_widgets/form_background.dart';
import 'package:inteligent_forms/core/constants/app_number_constants.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';
import 'package:inteligent_forms/core/shared_widgets/my_snack_bar.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';
import 'package:inteligent_forms/features/submissions/presentation/widgets/submission_widget.dart';

import '../../../../core/constants/font_constants.dart';
import '../../../forms/domain/entities/form_entity.dart';
import '../bloc/submissions_bloc.dart';
import '../bloc/submissions_event.dart';
import '../bloc/submissions_state.dart';

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
  void initState() {
    context.read<SubmissionsBloc>().add(
          SubmissionsRequested(formId: widget.form.id),
        );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormsBackGroundWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          actions: [
            GestureDetector(
              child: Icon(Icons.copy,
                  color: Theme.of(context).colorScheme.onPrimary),
              onTap: () {
                Clipboard.setData(ClipboardData(text: widget.form.id));
                showMySnackBar(
                  context,
                  AppStringConstants.copiedToClipboard,
                );
              },
            ),
          ],
          backgroundColor: Colors.transparent,
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
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSizedBoxes.kMediumBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStringConstants.submissions,
                      style: TextStyle(
                        fontSize: FontConstants.mediumFontSize,
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
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
                        // setState(() {});
                        //todo: add filter with block suiii
                      },
                    ),
                  ],
                ),
                AppSizedBoxes.kMediumBox(),
                MyTextField(
                  controller: controller,
                  hintText: AppStringConstants.search,
                ),
                AppSizedBoxes.kMediumBox(),
                BlocBuilder<SubmissionsBloc, SubmissionsState>(
                  builder: (context, state) {
                    if (state is SubmissionsLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state is SubmissionsLoaded) {
                      if (state.submissions.isEmpty) {
                        return Center(
                          child: Text(
                            AppStringConstants.noSubmissions,
                            style: TextStyle(
                              fontSize: FontConstants.mediumFontSize,
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }

                      return GridView.builder(
                        shrinkWrap: true,
                        itemCount: state.submissions.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return SubmissionCard(
                            submission: state.submissions[index],
                          );
                          // if (dateSelected != null) {
                          //   if (submissionList[index].dateWhenSubmitted.day ==
                          //           dateSelected!.day &&
                          //       submissionList[index].dateWhenSubmitted.month ==
                          //           dateSelected!.month &&
                          //       submissionList[index].dateWhenSubmitted.year ==
                          //           dateSelected!.year) {
                          //     return SubmissionCard(
                          //       submission: submissionList[index],
                          //     );
                          //   }
                          // }
                        },
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                      );
                    }
                    return const SizedBox();
                  },
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
