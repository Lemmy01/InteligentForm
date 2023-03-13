import 'package:flutter/material.dart';
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
      color: const Color(0xFFE5DDC8),
      child: Padding(
        padding: EdgeInsets.all(2.w),
        child: GestureDetector(
          child: Row(
            children: [
              const Icon(Icons.drag_handle),
              const SizedBox(
                width: 10,
              ),
              Text('Section ${section.sectionNumber}'),
              const Spacer(),
              const Text("Click for details"),
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
