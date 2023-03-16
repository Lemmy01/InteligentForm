part of 'create_form_bloc.dart';

abstract class CreateFormEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class CreateFormSubmitted extends CreateFormEvent {
  final String title;
  final int dataRetentionPeriod;
  final List<Section> sections;
  final List<Field> fields;

  CreateFormSubmitted({
    required this.title,
    required this.dataRetentionPeriod,
    required this.sections,
    required this.fields,
  });

  @override
  List<Object> get props => [
        title,
        dataRetentionPeriod,
        sections,
        fields,
      ];
}
