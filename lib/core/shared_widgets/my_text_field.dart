import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/app_number_constants.dart';
import 'package:sizer/sizer.dart';

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
