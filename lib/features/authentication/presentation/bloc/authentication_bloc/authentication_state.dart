part of 'authentication_bloc.dart';

abstract class SignUpState extends Equatable {
  const SignUpState();  

  @override
  List<Object> get props => [];
}
class SignUpInitial extends SignUpState {}