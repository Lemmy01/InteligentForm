import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sizer/sizer.dart';

import '../../domain/entities/field.dart';

class FieldCard extends StatelessWidget {
  const FieldCard({
    super.key,
    required this.field,
  });
  final Field field;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: const ActionPane(
        motion: DrawerMotion(),
        children: [
          SlidableAction(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            onPressed: null,
            backgroundColor: Color(0xFF7BC043),
            foregroundColor: Colors.white,
            icon: Icons.edit,
          ),
          SlidableAction(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            onPressed: null,
            backgroundColor: Color(0xFF0392CF),
            foregroundColor: Colors.white,
            icon: Icons.delete,
          ),
        ],
      ),
      child: Card(
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
                Text(field.label),
                const Spacer(),
              ],
            ),
            onTap: () {
              //TODO: Add onTap(Navigate to SectionPages)
            },
          ),
        ),
      ),
    );
  }
}
