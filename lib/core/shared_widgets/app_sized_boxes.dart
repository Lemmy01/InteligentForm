import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class AppSizedBoxes {
  static SizedBox kSmallBox() {
    return SizedBox(
      height: 1.h,
    );
  }

  static SizedBox kMediumBox() {
    return SizedBox(
      height: 3.h,
    );
  }

  static SizedBox kHSmallBox() {
    return SizedBox(
      height: 1.w,
    );
  }

  static SizedBox kHMediumBox() {
    return SizedBox(
      height: 2.w,
    );
  }
}
