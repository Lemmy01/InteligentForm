import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/background_widgets/create_field_background_widget.dart';
import 'package:inteligent_forms/core/constants/app_number_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';

import '../../../../../core/constants/font_constants.dart';
import '../../../../../core/constants/string_constants.dart';
import '../../widgets/create_field_button.dart';
import '../../widgets/documents_keywords_chips.dart';
import '../../widgets/field_type_dropdown.dart';
import '../../widgets/is_mandatory_checkbox.dart';
import '../../widgets/key_word_text_field.dart';
import '../../widgets/label_text_field.dart';
import '../../widgets/new_options_chips.dart';

class CreateFieldPage extends StatefulWidget {
  const CreateFieldPage({
    super.key,
  });

  @override
  State<CreateFieldPage> createState() => _CreateFieldPageState();
}

class _CreateFieldPageState extends State<CreateFieldPage> {
  TextEditingController labelController = TextEditingController();
  TextEditingController keywordController = TextEditingController();
  TextEditingController docsKeywordsController = TextEditingController();
  TextEditingController optionsKeywordsController = TextEditingController();

  @override
  void dispose() {
    labelController.dispose();
    keywordController.dispose();
    docsKeywordsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CreateFieldBackGroundWidget(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: const Text(AppCreateFormString.createField),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: AppNumberConstants.pageHorizontalPadding,
                right: AppNumberConstants.pageHorizontalPadding,
                top: AppNumberConstants.pageVerticalPadding,
                bottom: AppNumberConstants.bottomPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSizedBoxes.kSmallBox(),
                  LabelTextField(
                    labelController: labelController,
                  ),
                  AppSizedBoxes.kSmallBox(),
                  KeyWordTextField(
                    keywordController: keywordController,
                  ),
                  AppSizedBoxes.kSmallBox(),
                  const IsMandatoryCheckbox(),
                  AppSizedBoxes.kSmallBox(),
                  Text(
                    AppCreateFormString.fieldType,
                    style: TextStyle(
                      fontSize: FontConstants.mediumFontSize,
                      color: Colors.white,
                    ),
                  ),
                  AppSizedBoxes.kSmallBox(),
                  const FieldTypeDropdown(),
                  AppSizedBoxes.kSmallBox(),
                  NewOptionsChips(
                    optionsKeywordsController: optionsKeywordsController,
                  ),
                  AppSizedBoxes.kMediumBox(),
                  DocumentKeywordsChips(
                    docsKeywordsController: docsKeywordsController,
                  ),
                  AppSizedBoxes.kMediumBox(),
                  CreateFieldButton(
                    keywordController: keywordController,
                    labelController: labelController,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
