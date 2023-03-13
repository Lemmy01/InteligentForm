import 'package:flutter/material.dart';

import '../../../../../../core/constants/string_constants.dart';
import '../../../../../../core/shared_widgets/my_text_button.dart';
import '../../../../../fill_form/presentation/pages/fill_form_page.dart';

class FillFormButton extends StatelessWidget {
  const FillFormButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyTextButton(
      text: AppStringContants.fillForm,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FillFormPage(),
          ),
        );
      },
    );
  }
}
