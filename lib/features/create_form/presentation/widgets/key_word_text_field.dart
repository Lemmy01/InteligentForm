import 'package:flutter/material.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/shared_widgets/my_text_field.dart';

class KeyWordTextField extends StatelessWidget {
  const KeyWordTextField({
    super.key,
    required this.keywordController,
  });

  final TextEditingController keywordController;

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      controller: keywordController,
      hintText: AppCreateFormString.keyWord,
      textAlign: TextAlign.start,
    );
  }
}
