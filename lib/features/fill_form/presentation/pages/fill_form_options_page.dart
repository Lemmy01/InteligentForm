import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:inteligent_forms/core/constants/font_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/my_button.dart';
import 'package:inteligent_forms/core/shared_widgets/my_button_with_child.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';
import 'package:inteligent_forms/core/shared_widgets/sized_boxes.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/constants/app_number_constants.dart';

//TODO George Luta : add to constants
class FillFormOptionsPage extends HookWidget {
  const FillFormOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final urlController = useTextEditingController();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppNumberConstants.pageHorizontalPadding,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButtonWithChild(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Scan code',
                        style: TextStyle(
                            fontSize: FontConstants.mediumFontSize,
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      Icon(
                        Icons.qr_code_scanner,
                        size: FontConstants.mediumFontSize,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ],
                  ),
                  onPressed: () {
                    //TODO George Luta : scan code
                  },
                ),
                SizedBoxes.kMediumBox(),
                Center(
                  child: Text(
                    'or',
                    style: TextStyle(
                      fontSize: FontConstants.mediumFontSize,
                    ),
                  ),
                ),
                SizedBoxes.kMediumBox(),
                MyTextField(
                  controller: urlController,
                  hintText: 'Form url...',
                ),
                SizedBoxes.kSmallBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyButton(
                      width: 40.w,
                      text: 'Verify url',
                      onPressed: () {
                        //TODO George Luta : verify url
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
