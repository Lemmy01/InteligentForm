import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inteligent_forms/core/background_widgets/create_field_background_widget.dart';
import 'package:inteligent_forms/core/constants/app_number_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';

import '../../../../../core/constants/string_constants.dart';
import '../../../../../core/shared_widgets/text_field_with_chips.dart';
import '../../../../../core/utils/enums.dart';
import '../../bloc/create_field_bloc/create_field_bloc.dart';
import '../../bloc/create_field_bloc/create_field_event.dart';
import '../../bloc/create_field_bloc/create_field_state.dart';
import '../../widgets/create_field_button.dart';
import '../../widgets/documents_keywords_chips.dart';
import '../../widgets/field_type_dropdown.dart';
import '../../widgets/is_mandatory_checkbox.dart';
import '../../widgets/key_word_text_field.dart';
import '../../widgets/label_text_field.dart';

class CreateFieldPage extends StatefulWidget {
  const CreateFieldPage({super.key});

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
              padding: EdgeInsets.symmetric(
                horizontal: AppNumberConstants.pageHorizontalPadding,
                vertical: AppNumberConstants.pageVerticalPadding,
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
                  const Text(
                    AppCreateFormString.fieldType,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  AppSizedBoxes.kSmallBox(),
                  const FieldTypeDropdown(),
                  AppSizedBoxes.kSmallBox(),
                  BlocBuilder<CreateFieldBloc, CreateFieldState>(
                    builder: (context, state) {
                      if (state.fieldType != FieldType.singleChoice &&
                          state.fieldType != FieldType.multipleChoice) {
                        return const SizedBox();
                      }
                      return TextFieldWithChips(
                        title: AppCreateFormString.options,
                        controller: optionsKeywordsController,
                        onAdd: () {
                          context.read<CreateFieldBloc>().add(
                                OptionsChanged(
                                  options: [
                                    ...state.options,
                                    optionsKeywordsController.text.trim()
                                  ],
                                ),
                              );
                          optionsKeywordsController.clear();
                        },
                        onMinimaze: () {
                          context.read<CreateFieldBloc>().add(
                                ShowOptionsChanged(
                                  showOptions: !state.showOptions,
                                ),
                              );
                        },
                        contentInChips: state.options,
                        onDeleteChip: (value) {
                          context.read<CreateFieldBloc>().add(
                                OptionsChanged(
                                  options: [
                                    ...state.options
                                        .where((element) => element != value)
                                  ],
                                ),
                              );
                        },
                        showAllContainer: state.showOptions,
                      );
                    },
                  ),
                  AppSizedBoxes.kSmallBox(),
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
