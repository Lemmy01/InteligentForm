part of 'fill_form_bloc.dart';

abstract class FillFormState extends Equatable {
  const FillFormState();

  @override
  List<Object> get props => [];
}

class FillFormInitial extends FillFormState {}

class UrlExistsLoadingState extends FillFormState {}

class UrlExistsLoadedState extends FillFormState {
  final List<SectionWithField> sections;

  const UrlExistsLoadedState(this.sections);

  @override
  List<Object> get props => [sections];
}

class UrlExistsErrorState extends FillFormState {
  final String message;

  const UrlExistsErrorState(this.message);

  @override
  List<Object> get props => [message];
}

//

class FillFormLoading extends FillFormState {}

class FillFormLoaded extends FillFormState {
  final List<SectionWithField> listOfSections;

  const FillFormLoaded(this.listOfSections);

  @override
  List<Object> get props => [listOfSections];
}

class FillFormError extends FillFormState {
  final String message;

  const FillFormError(this.message);

  @override
  List<Object> get props => [message];
}
