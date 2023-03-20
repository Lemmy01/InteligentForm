import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 300,
        width: 300,
        child: Column(
          children: [
            Text('Filter'),
          ],
        ),
      ),
    );
  }
}
