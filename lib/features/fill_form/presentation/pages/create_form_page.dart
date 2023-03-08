import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/background_widgets/create_form_background_widget.dart';
import 'package:sizer/sizer.dart';

import '../widgets/outlined_text_field.dart';

class CreateFormPage extends StatefulWidget {
  const CreateFormPage({super.key});

  @override
  State<CreateFormPage> createState() => _CreateFormPageState();
}

class _CreateFormPageState extends State<CreateFormPage> {
  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _formEditingController = TextEditingController();

  List<String> list = [
    'None',
    'Identity Card',
    'Passport',
    'Birth Certificate',
    'Vehicle Identity Card',
    'Any Document',
  ];
  String dropdownValue = 'None';

  @override
  void dispose() {
    _nameEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CreateFormBackGroundWidget(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(
                    child: Text(
                      'Create Form',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  OutlinedTextField(
                    hintText: 'Form Name',
                    textEditingController: _nameEditingController,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.w),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: _formEditingController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20))
                          .copyWith(
                        border: InputBorder.none,
                        hintStyle: Theme.of(context).textTheme.bodyLarge,
                        hintText: 'Data Retention Period(1-60 days)',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("Select document type",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.white,
                              )),
                  SizedBox(
                    height: 1.h,
                  ),
                  InputDecorator(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        menuMaxHeight: 30.h,
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        onChanged: (String? value) {
                          setState(() {
                            //TODO: add logic
                            dropdownValue = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xFF01949A),
                      borderRadius: BorderRadius.circular(10.w),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(1.w * 0.2.h),
                      child: GestureDetector(
                        child: Text(
                          "Add Section",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ),SizedBox(
                    height: 5.h,
                  ),
                    
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 1.h),
                        child: GestureDetector(
                          child: Text(
                            "Create Form",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
