import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:sizer/sizer.dart';

import '../../domain/entities/section.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({
    super.key,
    required this.section,
  });
  final Section section;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Theme.of(context).colorScheme.onPrimary,
      child: Padding(
        padding: EdgeInsets.all(3.5.w),
        child: GestureDetector(
          child: Row(
            children: [
              Text(
                '${AppStringConstants.section} ${section.sectionNumber}',
              ),
              const Spacer(),
              const Text(
                AppStringConstants.clickForDetailes,
              ),
            ],
          ),
          onTap: () {
            //TODO: Add onTap(Navigate to SectionPages)
          },
        ),
      ),
    );
  }
}
