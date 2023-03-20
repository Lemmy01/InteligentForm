import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/app_number_constants.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/constants/font_constants.dart';

class PreviewDocumentPage extends StatelessWidget {
  const PreviewDocumentPage({
    super.key,
    //required this.section
  });
  // final SectionWithField section;
  //Todo: add section to constructor
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppSizedBoxes.kMediumBox(),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5DDC8),
                    borderRadius: BorderRadius.circular(
                        AppNumberConstants.pageVerticalPadding),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "DOCUMENT",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: FontConstants.largeFontSize,
                          color: const Color(0xFF00446A),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ],
          ),
          AppSizedBoxes.kMediumBox(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
            ),
            height: 50.h,
            width: 80.w,
            child: Text(
              "Contetn  of document",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontSize: FontConstants.smallFontSize,
                    color: const Color(0xFF00446A),
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          AppSizedBoxes.kMediumBox(),
          Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xFF0011A9),
                borderRadius: BorderRadius.circular(10.w),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 1.h),
                child: GestureDetector(
                  child: Text(
                    AppCreateFormString.createForm,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
