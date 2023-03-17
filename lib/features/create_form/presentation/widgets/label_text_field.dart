import 'package:flutter/material.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/shared_widgets/my_text_field.dart';

class LabelTextField extends StatelessWidget {
  const LabelTextField({
    super.key,
    required this.labelController,
  });

  final TextEditingController labelController;

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      controller: labelController,
      hintText: AppCreateFormString.label,
      textAlign: TextAlign.start,
    );
  }
}
