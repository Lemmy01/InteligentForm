import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inteligent_forms/core/background_widgets/create_field_background_widget.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';
import 'package:inteligent_forms/core/shared_widgets/my_button.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';
import 'package:inteligent_forms/core/utils/extensions.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/field.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/constants/string_constants.dart';
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

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    labelController.dispose();
    keywordController.dispose();
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
            child: Column(
              children: [
                AppSizedBoxes.kSmallBox(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: BlocBuilder<CreateFieldBloc, CreateFieldState>(
                    builder: (context, state) {
                      return MyTextField(
                        controller: labelController,
                        hintText: AppCreateFormString.label,
                        textAlign: TextAlign.start,
                        onChanged: (value) => context
                            .read<CreateFieldBloc>()
                            .add(CreateFieldLabelChanged(label: value)),
                      );
                    },
                  ),
                ),
                AppSizedBoxes.kSmallBox(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: MyTextField(
                    controller: keywordController,
                    hintText: AppCreateFormString.keyWord,
                    textAlign: TextAlign.start,
                    onChanged: (value) => context
                        .read<CreateFieldBloc>()
                        .add(CreateFieldKeyWordChanged(keyWord: value)),
                  ),
                ),
                AppSizedBoxes.kSmallBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      AppCreateFormString.fieldType,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                      child: InputDecorator(
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
                                  menuMaxHeight: 30.h,
                                  value: state.fieldType,
                                  icon: const Icon(Icons.arrow_downward),
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
                                      child: Text(value.toShortString()),
                                    );
                                  }).toList()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
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
    );
  }
}
