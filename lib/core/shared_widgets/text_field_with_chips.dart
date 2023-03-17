import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../features/create_form/domain/validators/text_field_with_chips_validator.dart';
import '../constants/app_number_constants.dart';
import '../constants/font_constants.dart';
import '../constants/string_constants.dart';
import 'app_sized_boxes.dart';
import 'my_button.dart';
import 'my_text_field.dart';

class TextFieldWithChips extends StatelessWidget {
  const TextFieldWithChips({
    super.key,
    required this.title,
    required this.controller,
    required this.onAdd,
    required this.onMinimaze,
    required this.contentInChips,
    required this.onDeleteChip,
    required this.showAllContainer,
  });

  final String title;
  final TextEditingController controller;

  final VoidCallback onAdd;
  final VoidCallback onMinimaze;
  final bool showAllContainer;

  final List<String> contentInChips;
  final Function(String value) onDeleteChip;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onMinimaze(),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(
            AppNumberConstants.mediumTilePadding,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 3.w,
            vertical: 1.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: FontConstants.mediumFontSize,
                    ),
                  ),
                  Icon(
                    showAllContainer
                        ? Icons.arrow_drop_up
                        : Icons.arrow_drop_down,
                    size: 25.sp,
                  ),
                ],
              ),
              if (showAllContainer) ...[
                AppSizedBoxes.kSmallBox(),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: MyTextField(
                        controller: controller,
                        hintText: AppStringConstants.newKeyword,
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Expanded(
                      flex: 2,
                      child: MyButton(
                        text: AppStringConstants.add,
                        onPressed: () {
                          TextFieldWithChipsValidator.validate(
                            controller.text,
                            contentInChips,
                          ).fold(
                            (failure) => failure.failureMessage,
                            (r) => onAdd(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                AppSizedBoxes.kSmallBox(),
                Wrap(
                  children: [
                    for (final content in contentInChips)
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                          vertical: 0.5.h,
                        ),
                        child: Chip(
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                          label: Text(
                            content,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                          deleteIcon: Icon(
                            Icons.close,
                            size: 20,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                          onDeleted: () => onDeleteChip(content),
                        ),
                      ),
                  ],
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
