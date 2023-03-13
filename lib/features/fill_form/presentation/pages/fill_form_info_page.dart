import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/font_constants.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';

import '../../../../core/constants/app_number_constants.dart';

class FillFormInfoPage extends StatelessWidget {
  const FillFormInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(
          AppNumberConstants.pageHorizontalPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStringContants.typeInformationBelow,
              style: TextStyle(
                fontSize: FontConstants.mediumFontSize,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            AppSizedBoxes.kSmallBox(),
            
          ],
        ),
      ),
    );
  }
}
