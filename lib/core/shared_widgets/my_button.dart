import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.isLoading = false,
  });

  final String text;
  final VoidCallback onPressed;
  final double? width;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: isLoading ? () {} : onPressed,
      minWidth: width ?? 80.w,
      padding: EdgeInsets.symmetric(
        vertical: 1.h,
      ),
      color: Theme.of(context).colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: !isLoading
          ? Text(
              text,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
