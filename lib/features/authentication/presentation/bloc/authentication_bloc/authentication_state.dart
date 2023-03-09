import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class LoadingState extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class SignUpSuccess extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class SignUpFailure extends AuthenticationState {
  final String message;

  const SignUpFailure({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
