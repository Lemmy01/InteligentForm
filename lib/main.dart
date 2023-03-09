import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inteligent_forms/features/authentication/data/repositories/authentication_repo_impl.dart';
import 'package:inteligent_forms/features/authentication/domain/usecases/authentication_usecase.dart';
import 'package:inteligent_forms/features/authentication/domain/validators/autentication_validators.dart';
import 'package:inteligent_forms/features/authentication/presentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:sizer/sizer.dart';

import 'bloc_observer.dart';
import 'features/authentication/presentation/bloc/account_type_bloc.dart/bloc/account_type_bloc.dart';
import 'features/authentication/presentation/pages/app_bottom_bar.dart';
import 'features/authentication/presentation/pages/home_page/home_page.dart';
import 'firebase_options.dart';

Future main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => Sizer(
        builder: (
          context,
          orientation,
          deviceType,
        ) {
          return const InteligentFrormsApp();
        },
      ),
    ),
  );
}

class InteligentFrormsApp extends StatelessWidget {
  const InteligentFrormsApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.teal,
      ).copyWith(
        primary: const Color(0XFF01949A),
        secondary: const Color(0XFF004369),
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AccountTypeBloc(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => AuthenticationBloc(
            authenticationUsecase: AuthenticationUsecase(
              authenticationRepo: AuthenticationRepoImpl(),
              authenticationValidator: AuthenticationValidator(),
            ),
            accountTypeBloc: context.read<AccountTypeBloc>(),
          ),
        ),
      ],
      child: MaterialApp(
        theme: themeData,
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const AppBottomBar();
            }
            return const HomePage();
          },
        ),
      ),
    );
  }
}
