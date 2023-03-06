import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            SizedBox(
              height: 60.h,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.sp),
              ),
              onPressed: () {},
              color: Theme.of(context).colorScheme.onPrimary,
              //TODO George Luta : 2 configure make button rounded
              child: Padding(
                padding: EdgeInsets.all(12.sp),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize:
                        Theme.of(context).textTheme.headlineSmall!.fontSize,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                'Fill Form',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
