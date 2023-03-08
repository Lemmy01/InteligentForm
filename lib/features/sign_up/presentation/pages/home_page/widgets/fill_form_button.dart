import 'package:flutter/material.dart';

import '../../../../../../core/constants/string_constants.dart';
import '../../../../../../core/shared_widgets/my_text_button.dart';

class FillFormButton extends StatelessWidget {
  const FillFormButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyTextButton(
      text: AppStringContants.fillForm,
      onPressed: () {
        //TODO George Luta : navigate to fill form page
      },
    );
  }
}
