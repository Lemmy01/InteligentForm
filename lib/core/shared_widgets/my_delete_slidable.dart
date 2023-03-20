import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MyDeleteSlidable extends StatelessWidget {
  const MyDeleteSlidable({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      onPressed: (context) {
        onPressed();
      },
      backgroundColor: Theme.of(context).colorScheme.secondary,
      foregroundColor: Theme.of(context).colorScheme.onSecondary,
      icon: Icons.delete,
    );
  }
}
