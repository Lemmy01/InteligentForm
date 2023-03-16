import 'package:equatable/equatable.dart';

abstract class CreateFormState extends Equatable {
  @override
  List<Object> get props => [];
}

class CreateFormInitial extends CreateFormState {}

//aici sa nu lasi utilizatorul sa apese pe butonul de submit daca e deja in proces
class CreateFormLoading extends CreateFormState {}

class CreateFormSuccess extends CreateFormState {}

class CreateFormFailure extends CreateFormState {
  final String message;

  CreateFormFailure({required this.message});

  @override
  List<Object> get props => [message];
}
