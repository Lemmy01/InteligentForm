import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class LoadingState extends AuthenticationState {}

class SignUpSuccess extends AuthenticationState {}

class SignUpFailure extends AuthenticationState {
  final String message;

  const SignUpFailure({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
