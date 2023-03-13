import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/app_number_constants.dart';
import 'package:sizer/sizer.dart';

import '../constants/font_constants.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.width,
  });

  final TextEditingController controller;
  final String hintText;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 80.w,
      child: TextField(
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontSize: FontConstants.smallFontSize,
            ),
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.center,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              AppNumberConstants.longTilePadding,
            ),
          ),
          hintText: hintText,
          fillColor: Theme.of(context).colorScheme.onPrimary,
          filled: true,
        ),
      ),
    );
  }
}
