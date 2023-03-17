import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inteligent_forms/core/background_widgets/create_field_background_widget.dart';
import 'package:inteligent_forms/core/constants/app_number_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';
import 'package:inteligent_forms/core/shared_widgets/my_button.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';
import 'package:inteligent_forms/core/utils/extensions.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/field.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/constants/string_constants.dart';
import '../../../../../core/shared_widgets/text_field_with_chips.dart';
import '../../../../../core/utils/enums.dart';
import '../../bloc/create_field_bloc/create_field_bloc.dart';
import '../../bloc/create_field_bloc/create_field_event.dart';
import '../../bloc/create_field_bloc/create_field_state.dart';
import '../../bloc/create_form_bloc/create_form_bloc.dart';
import '../../bloc/create_form_bloc/create_form_event.dart';

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
                  BlocBuilder<CreateFieldBloc, CreateFieldState>(
                    builder: (context, state) {
                      return MyTextField(
                        controller: labelController,
                        hintText: AppCreateFormString.label,
                        textAlign: TextAlign.start,
                        onChanged: (value) =>
                            context.read<CreateFieldBloc>().add(
                                  CreateFieldLabelChanged(label: value),
                                ),
                      );
                    },
                  ),
                  AppSizedBoxes.kSmallBox(),
                  MyTextField(
                    controller: keywordController,
                    hintText: AppCreateFormString.keyWord,
                    textAlign: TextAlign.start,
                    onChanged: (value) => context
                        .read<CreateFieldBloc>()
                        .add(CreateFieldKeyWordChanged(keyWord: value)),
                  ),
                  AppSizedBoxes.kSmallBox(),
                  Row(
                    children: [
                      const Text(
                        AppCreateFormString.mandatory,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      BlocBuilder<CreateFieldBloc, CreateFieldState>(
                        buildWhen: (previous, current) =>
                            previous.isMandatory != current.isMandatory,
                        builder: (context, state) {
                          return Checkbox(
                            value: state.isMandatory,
                            onChanged: (newValue) {
                              context.read<CreateFieldBloc>().add(
                                  CreateFieldIsMandatoryChanged(
                                      isMandatory: newValue!));
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  AppSizedBoxes.kSmallBox(),
                  const Text(
                    AppCreateFormString.fieldType,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  AppSizedBoxes.kSmallBox(),
                  InputDecorator(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(horizontal: 3.w),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                    ),
                    child: BlocBuilder<CreateFieldBloc, CreateFieldState>(
                      buildWhen: (previous, current) =>
                          previous.fieldType != current.fieldType,
                      builder: (context, state) {
                        return DropdownButtonHideUnderline(
                          child: DropdownButton<FieldType>(
                              isExpanded: true,
                              menuMaxHeight: 30.h,
                              value: state.fieldType,
                              icon: const Icon(Icons.arrow_drop_down),
                              onChanged: (FieldType? value) {
                                context
                                    .read<CreateFieldBloc>()
                                    .add(CreateFieldTypeChanged(
                                      fieldType: value!,
                                    ));
                              },
                              items: FieldType.values
                                  .map<DropdownMenuItem<FieldType>>(
                                      (FieldType value) {
                                return DropdownMenuItem<FieldType>(
                                  value: value,
                                  child: Center(
                                      child: Text(value.toShortString())),
                                );
                              }).toList()),
                        );
                      },
                    ),
                  ),
                  AppSizedBoxes.kMediumBox(),
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
                  BlocBuilder<CreateFieldBloc, CreateFieldState>(
                    buildWhen: (previous, current) =>
                        previous.showDocumentKeywords !=
                            current.showDocumentKeywords ||
                        previous.documentKeywords != current.documentKeywords,
                    builder: (context, state) {
                      return TextFieldWithChips(
                        title: AppCreateFormString.documentKeywords,
                        controller: docsKeywordsController,
                        onAdd: () {
                          context.read<CreateFieldBloc>().add(
                                DocumentKeywordsChanged(
                                  documentKeywords: [
                                    ...state.documentKeywords,
                                    docsKeywordsController.text.trim()
                                  ],
                                ),
                              );
                          docsKeywordsController.clear();
                        },
                        contentInChips: state.documentKeywords,
                        onDeleteChip: (value) {
                          context.read<CreateFieldBloc>().add(
                                DocumentKeywordsChanged(
                                  documentKeywords: [
                                    ...state.documentKeywords
                                        .where((element) => element != value)
                                  ],
                                ),
                              );
                        },
                        onMinimaze: () {
                          context.read<CreateFieldBloc>().add(
                                ShowDocumentKeywordsChanged(
                                  showDocumentKeywords:
                                      !state.showDocumentKeywords,
                                ),
                              );
                        },
                        showAllContainer: state.showDocumentKeywords,
                      );
                    },
                  ),
                  AppSizedBoxes.kMediumBox(),
                  MyButton(
                    text: AppStringConstants.addField,
                    color: Theme.of(context).colorScheme.secondary,
                    width: 80.w,
                    onPressed: () {
                      context.read<CreateFormBloc>().add(
                            AddField(
                              field: Field(
                                keyWord: keywordController.text.trim(),
                                mandatory: context
                                    .read<CreateFieldBloc>()
                                    .state
                                    .isMandatory,
                                fieldType: context
                                    .read<CreateFieldBloc>()
                                    .state
                                    .fieldType
                                    .toShortString(),
                                docKeys: [],
                                label: labelController.text.trim(),
                              ),
                            ),
                          );
                      Navigator.pop(context);
                    },
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
