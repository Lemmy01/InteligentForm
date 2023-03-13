import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/app_number_constants.dart';
import 'package:sizer/sizer.dart';

import '../constants/font_constants.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
    this.width,
    this.maxLines,
    this.textAlign,
    this.textInputAction,
    this.keyboardType,
  });

  final TextEditingController controller;
  final String hintText;
  final double? width;
  final bool isPassword;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 80.w,
      child: TextField(
        keyboardType: keyboardType ?? TextInputType.multiline,
        maxLines: maxLines ?? 1,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontSize: FontConstants.smallFontSize,
            ),
        textInputAction: textInputAction ?? TextInputAction.next,
        textAlign: textAlign ?? TextAlign.center,
        controller: controller,
        obscureText: isPassword,
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
