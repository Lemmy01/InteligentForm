import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inteligent_forms/features/authentication/data/repositories/authentication_repo_impl.dart';
import 'package:inteligent_forms/features/authentication/domain/usecases/authentication_usecase.dart';
import 'package:inteligent_forms/features/authentication/domain/validators/autentication_validators.dart';
import 'package:inteligent_forms/features/authentication/presentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:inteligent_forms/features/create_form/data/repositories/create_form_repository_impl.dart';
import 'package:inteligent_forms/features/forms/domain/usecases/forms_usecase.dart';
import 'package:sizer/sizer.dart';

import 'bloc_observer.dart';
import 'features/authentication/presentation/bloc/account_type_bloc.dart/bloc/account_type_bloc.dart';
import 'features/authentication/presentation/pages/home_page/home_page.dart';
import 'features/create_form/data/datasources/create_form_api.dart';
import 'features/create_form/domain/usecases/create_form.dart';
import 'features/create_form/presentation/bloc/create_field_bloc/create_field_bloc.dart';
import 'features/create_form/presentation/bloc/create_form_bloc/create_form_bloc.dart';
import 'features/create_form/presentation/bloc/cubit/document_type_cubit.dart';
import 'features/forms/presentation/bloc/forms_bloc.dart';
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
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(Colors.white),
        checkColor: MaterialStateProperty.all(const Color(0XFF004369)),
      ),
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
        BlocProvider(
          create: (context) => CreateFormBloc(
            createFormUseCase: CreateForm(
              CreateFormRepositoryImpl(
                api: CreateFormApiImpl(
                  FirebaseFirestore.instance,
                ),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => DocumentTypeCubit(),
        ),
        BlocProvider(
          create: (context) => CreateFieldBloc(),
        ),
        BlocProvider(
          create: (context) => FormsBloc(
            formsUseCase: FormsUseCase(),
          )..add(FormsLoadStarted()),
        ),
      ],
      child: MaterialApp(
        theme: themeData,
        home: const HomePage(),
      ),
    );
  }
}
