import 'package:flutter/material.dart';
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
    return Padding(
      padding: EdgeInsets.only(
        left: 10.w,
        top: 10.h,
        right: 10.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                      contentPadding: EdgeInsets.symmetric(horizontal: 20))
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
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
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
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
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
                      "Create Form",
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
