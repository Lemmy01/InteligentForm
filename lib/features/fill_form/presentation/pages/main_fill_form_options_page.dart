import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:inteligent_forms/core/constants/app_icons.dart';
import 'package:inteligent_forms/core/constants/font_constants.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';
import 'package:inteligent_forms/core/shared_widgets/my_button.dart';
import 'package:inteligent_forms/core/shared_widgets/my_button_with_child.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/background_widgets/create_field_background_widget.dart';
import '../../../../core/constants/app_number_constants.dart';
import '../../../../core/shared_widgets/my_snack_bar.dart';
import '../bloc/fill_form_bloc.dart';
import 'fill_form_page.dart';

class MainFillFormOptionsPage extends HookWidget {
  const MainFillFormOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final urlController = useTextEditingController();

    return CreateFieldBackGroundWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocListener<FillFormBloc, FillFormState>(
          listener: (context, state) {
            if (state is UrlExistsLoadedState) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FillFormPage(
                    sections: state.sections,
                  ),
                ),
              );

              if (state is UrlExistsErrorState) {
                log('Ar trebui sa afisez un snackbar aici');
                showMySnackBar(context, AppStringConstants.noSectionsFound);
              }
            }
          },
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppNumberConstants.pageHorizontalPadding,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButtonWithChild(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStringConstants.scanCode,
                            style: TextStyle(
                                fontSize: FontConstants.mediumFontSize,
                                color: Theme.of(context).colorScheme.onPrimary),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            AppIcons.scanCode,
                            size: FontConstants.mediumFontSize,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ],
                      ),
                      onPressed: () {
                        //TODO George Luta : scan code
                      },
                    ),
                    AppSizedBoxes.kMediumBox(),
                    Center(
                      child: Text(
                        AppStringConstants.or,
                        style: TextStyle(
                          fontSize: FontConstants.mediumFontSize,
                        ),
                      ),
                    ),
                    AppSizedBoxes.kMediumBox(),
                    MyTextField(
                      controller: urlController,
                      hintText: '${AppStringConstants.formUrl}'
                          '${AppStringConstants.threeDots}',
                    ),
                    AppSizedBoxes.kSmallBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        BlocBuilder<FillFormBloc, FillFormState>(
                          builder: (context, state) {
                            return MyButton(
                              isLoading: state is UrlExistsLoadingState,
                              width: 40.w,
                              text: AppStringConstants.fillFormFromUrl,
                              onPressed: () {
                                context.read<FillFormBloc>().add(
                                      CheckIfFormExistsEvent(
                                        urlController.text.trim(),
                                      ),
                                    );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}