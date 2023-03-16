import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/my_text_field.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/background_widgets/create_field_background_widget.dart';
import '../../../../../core/constants/font_constants.dart';

class CreateSectionPage extends StatefulWidget {
  const CreateSectionPage({super.key});

  @override
  State<CreateSectionPage> createState() => _CreateSectionPageState();
}

class _CreateSectionPageState extends State<CreateSectionPage> {
  late String dropdownValue;
  TextEditingController requestController = TextEditingController();
  List<String> list = [
    AppStringDocumentTypes.none,
    AppStringDocumentTypes.identityCard,
    AppStringDocumentTypes.birthCertificate,
    AppStringDocumentTypes.passport,
    AppStringDocumentTypes.vehicleIdentityCard,
    AppStringDocumentTypes.anyDocument,
  ];
  @override
  void initState() {
    dropdownValue = list.first;
    super.initState();
  }

  @override
  void dispose() {
    requestController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CreateFieldBackGroundWidget(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: const Text(AppCreateFormString.createSection),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Center(
                  child: Text(
                    AppCreateFormString.scanDocType,
                    style: TextStyle(
                        fontSize: FontConstants.largeFontSize,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: InputDecorator(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.w),
                      ),
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
                ),
                SizedBox(
                  height: 5.h,
                ),
                Center(
                  child: Text(
                    AppCreateFormString.sectionContent,
                    style: TextStyle(
                        fontSize: FontConstants.largeFontSize,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Center(
                  child: MyTextField(
                    textInputAction: TextInputAction.newline,
                    textAlign: TextAlign.start,
                    maxLines: 10,
                    width: 95.w,
                    controller: requestController,
                    hintText: AppCreateFormString.sectionContent,
                  ),
                ),
                SizedBox(
                  height: 20.h,
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 1.h),
                      child: GestureDetector(
                        child: Text(
                          AppCreateFormString.createSection,
                          style: TextStyle(
                              fontSize: FontConstants.largeFontSize,
                              color: Colors.white),
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
    );
  }
}
