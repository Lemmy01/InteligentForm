import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inteligent_forms/core/utils/enums.dart';
import 'package:inteligent_forms/core/utils/maps.dart';
import 'package:inteligent_forms/features/authentication/presentation/bloc/account_type_bloc.dart/bloc/account_type_bloc.dart';

import '../../../domain/usecases/authentication_usecase.dart';
import 'authentication_state.dart';

part 'authentication_event.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationUsecase authenticationUsecase;

  late StreamSubscription accountTypeSubscription;
  AccountTypeBloc accountTypeBloc;

  AccountType accountType;

  AuthenticationBloc({
    required this.authenticationUsecase,
    required this.accountTypeBloc,
  })  : accountType = accountTypeBloc.state.accountType,
        super(AuthenticationInitial()) {
    accountTypeSubscription = accountTypeBloc.stream.listen(
      (event) {
        accountType = event.accountType;
      },
    );

    on<SignUpStarted>(_onSignUpStarted);
  }

  Future<void> _onSignUpStarted(
      SignUpStarted event, Emitter<AuthenticationState> emit) async {
    emit(LoadingState());

    (await authenticationUsecase.signUp(
      name: event.name,
      type: accountTypeToString(accountType: accountType),
      emailAddress: event.emailAddress,
      password: event.password,
      fiscalCode: event.fiscalCode,
      address: event.address,
    ))
        .fold(
      (error) => emit(SignUpFailure(
        message: error.failureMessage,
      )),
      (succes) => emit(SignUpSuccess()),
    );
  }

  @override
  Future<void> close() async {
    accountTypeSubscription.cancel();
    super.close();
  }
}
