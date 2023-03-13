import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:inteligent_forms/core/constants/app_icons.dart';
import 'package:inteligent_forms/core/constants/font_constants.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';
import 'package:inteligent_forms/core/shared_widgets/my_button.dart';
import 'package:inteligent_forms/core/shared_widgets/my_button_with_child.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';
import 'package:inteligent_forms/features/fill_form/presentation/pages/fill_form_page.dart';
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
                        AppStringContants.scanCode,
                        style: TextStyle(
                            fontSize: FontConstants.mediumFontSize,
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Icon(
                        AppIcons.scanCode,
                        size: FontConstants.mediumFontSize,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ],
                  ),
                  onPressed: () {
                    //TODO George Luta : scan code
                  },
                ),
                AppSizedBoxes.kMediumBox(),
                Center(
                  child: Text(
                    AppStringContants.or,
                    style: TextStyle(
                      fontSize: FontConstants.mediumFontSize,
                    ),
                  ),
                ),
                AppSizedBoxes.kMediumBox(),
                MyTextField(
                  controller: urlController,
                  hintText: '${AppStringContants.formUrl}'
                      '${AppStringContants.threeDots}',
                ),
                AppSizedBoxes.kSmallBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyButton(
                      width: 40.w,
                      text: AppStringContants.fillFormFromUrl,
                      onPressed: () {
                        //TODO George Luta : verify url (dummy for now)
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FillFormPage(),
                          ),
                        );
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
