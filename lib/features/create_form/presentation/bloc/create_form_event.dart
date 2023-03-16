part of 'create_form_bloc.dart';

abstract class CreateFormEvent extends Equatable {
  @override
  List<Object> get props => [];
}

// class CreateFormEvent extends CreateFormEvent {
//   final String title;
//   final int dataRetentionPeriod;
//   final List<Section> sections;
//   final List<Field> fields;

//   CreateFormEvent({
//     required this.title,
//     required this.dataRetentionPeriod,
//     required this.sections,
//     required this.fields,
//   });
// }
