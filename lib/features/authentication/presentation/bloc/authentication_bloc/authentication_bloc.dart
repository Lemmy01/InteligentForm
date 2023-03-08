import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/usecases/authentication_usecase.dart';
import 'authentication_state.dart';

part 'authentication_event.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationUsecase authenticationUsecase;

  AuthenticationBloc({
    required this.authenticationUsecase,
  }) : super(AuthenticationInitial()) {
    on<SignUpStarted>(_onSignUpStarted);
  }

  Future<void> _onSignUpStarted(
      SignUpStarted event, Emitter<AuthenticationState> emit) async {
    emit(LoadingState());

    (await authenticationUsecase.signUp(
      name: event.name,
      type: event.type,
      emailAddress: event.emailAddress,
      password: event.password,
      fiscalCode: event.fiscalCode,
      address: event.address,
      subscriptionType: event.subscriptionType,
    ))
        .fold(
      (error) => emit(
        SignUpFailure(
          message: error.failureMessage,
        ),
      ),
      (succes) => SignUpSuccess(),
    );
  }
}
