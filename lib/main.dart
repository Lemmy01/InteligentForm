import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:inteligent_forms/features/sign_up/presentation/pages/home_page/home_page.dart';
import 'package:sizer/sizer.dart';

import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => Sizer(builder: (
        context,
        orientation,
        deviceType,
      ) {
        return const InteligentFrormsApp();
      }),
    ),
  );
}

class InteligentFrormsApp extends StatelessWidget {
  const InteligentFrormsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        ).copyWith(
          primary: const Color(0XFF01949A),
          secondary: const Color(0XFF004369),
        ),
      ),
      home: const HomePage(),
    );
  }
}
