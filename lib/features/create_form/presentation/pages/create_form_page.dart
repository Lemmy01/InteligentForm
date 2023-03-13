import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/constants/string_constants.dart';

class CreateFormPage extends StatefulWidget {
  const CreateFormPage({super.key});

  @override
  State<CreateFormPage> createState() => _CreateFormPageState();
}

class _CreateFormPageState extends State<CreateFormPage> {
  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _dataRetentionController =
      TextEditingController();

  @override
  void dispose() {
    _nameEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.w,
        top: 10.h,
        right: 10.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTextField(
            hintText: AppCreateFormString.formName,
            controller: _nameEditingController,
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 5.h,
          ),
          MyTextField(
            hintText: AppCreateFormString.dataRetention,
            controller: _dataRetentionController,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
            child: Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xFF0011A9),
                  borderRadius: BorderRadius.circular(10.w),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 1.h),
                  child: GestureDetector(
                    child: Text(
                      AppCreateFormString.createForm,
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.white,
                              ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
