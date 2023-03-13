import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyButtonWithChild extends StatelessWidget {
  const MyButtonWithChild({
    super.key,
    required this.child,
    required this.onPressed,
    this.width,
    this.isLoading = false,
  });

  final Widget child;
  final VoidCallback onPressed;
  final double? width;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: isLoading ? () {} : onPressed,
      minWidth: width ?? 80.w,
      height: 5.h,
      color: Theme.of(context).colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: !isLoading
          ? child
          : CircularProgressIndicator(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
    );
  }
}
