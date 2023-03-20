import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/shared_widgets/my_slidable_action.dart';

class MyEditSlidable extends StatelessWidget {
  const MyEditSlidable({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MySlidableAction(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      foregroundColor: Theme.of(context).colorScheme.onTertiary,
      icon: Icons.edit,
      onPressed: onPressed,
    );
  }
}
