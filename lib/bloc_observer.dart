import 'dart:developer';

import 'package:bloc/bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    log(transition.toString(), name: bloc.runtimeType.toString());
    super.onTransition(bloc, transition);
  }
}
