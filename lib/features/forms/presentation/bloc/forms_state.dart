part of 'forms_bloc.dart';

abstract class FormsState extends Equatable {
  const FormsState();  

  @override
  List<Object> get props => [];
}
class FormsInitial extends FormsState {}

class FormsLoading extends FormsState {}

class FormsLoaded extends FormsState {
  final List<FormModel> forms;

  const FormsLoaded({required this.forms});

  @override
  List<Object> get props => [forms];
}


class FormsError extends FormsState {
  final String message;

  const FormsError({required this.message});

  @override
  List<Object> get props => [message];
}
