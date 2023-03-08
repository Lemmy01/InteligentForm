part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class SignUpStarted extends AuthenticationEvent {
  final String name;
  final String type;
  final String emailAddress;
  final String password;
  final String confirmPassword;
  final String? fiscalCode;
  final String address;
  final String subscriptionType;

  const SignUpStarted({
    required this.name,
    required this.type,
    required this.emailAddress,
    required this.password,
    required this.confirmPassword,
    required this.fiscalCode,
    required this.address,
    required this.subscriptionType,
  });

  @override
  List<Object> get props => [
        name,
        type,
        emailAddress,
        password,
        confirmPassword,
        address,
        subscriptionType,
      ];
}
