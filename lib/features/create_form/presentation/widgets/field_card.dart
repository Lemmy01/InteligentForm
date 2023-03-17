import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/shared_widgets/my_delete_slidable.dart';
import '../../../../core/shared_widgets/my_slidable.dart';
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
    return MySlidable(
      actions: [
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
        MyDeleteSlidable(
          onPressed: () {
            context.read<CreateFormBloc>().add(
                  RemoveField(
                    placeholderKeyWord: field.placeholderKeyWord,
                  ),
                );
          },
        ),
      ],
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
