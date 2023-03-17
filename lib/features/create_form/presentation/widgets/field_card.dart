import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sizer/sizer.dart';

import '../../domain/entities/field.dart';
import '../bloc/create_form_bloc/create_form_bloc.dart';
import '../bloc/create_form_bloc/create_form_event.dart';

class FieldCard extends StatelessWidget {
  const FieldCard({
    super.key,
    required this.field,
  });
  final Field field;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        extentRatio: .25,
        motion: const DrawerMotion(),
        children: [
          // SlidableAction(
          //   borderRadius: const BorderRadius.only(
          //     bottomLeft: Radius.circular(10),
          //     topLeft: Radius.circular(10),
          //   ),
          //   backgroundColor: Theme.of(context).colorScheme.tertiary,
          //   foregroundColor: Theme.of(context).colorScheme.onTertiary,
          //   icon: Icons.edit,
          //   onPressed: (context) {},
          // ),
          SlidableAction(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            onPressed: (context) {
              context.read<CreateFormBloc>().add(
                    RemoveField(
                      placeholderKeyWord: field.placeholderKeyWord,
                    ),
                  );
            },
            backgroundColor: Theme.of(context).colorScheme.secondary,
            foregroundColor: Theme.of(context).colorScheme.onSecondary,
            icon: Icons.delete,
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Theme.of(context).colorScheme.onPrimary,
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
