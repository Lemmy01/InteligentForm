import 'package:equatable/equatable.dart';

import '../../../domain/entities/field.dart';
import '../../../domain/entities/section.dart';

abstract class CreateFormEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ChangeTitle extends CreateFormEvent {
  final String title;

  ChangeTitle({required this.title});

  @override
  List<Object> get props => [title];
}

class ChangeDataRetentionPeriod extends CreateFormEvent {
  final int dataRetentionPeriod;

  ChangeDataRetentionPeriod({required this.dataRetentionPeriod});

  @override
  List<Object> get props => [dataRetentionPeriod];
}

class AddSection extends CreateFormEvent {
  final Section section;

  AddSection({required this.section});

  @override
  List<Object> get props => [section];
}

class RemoveSection extends CreateFormEvent {
  final int sectionNumber;

  RemoveSection({required this.sectionNumber});

  @override
  List<Object> get props => [sectionNumber];
}

class AddField extends CreateFormEvent {
  final Field field;

  AddField({required this.field});

  @override
  List<Object> get props => [field];
}

class RemoveField extends CreateFormEvent {
  final String placeholderKeyWord;

  RemoveField({required this.placeholderKeyWord});

  @override
  List<Object> get props => [placeholderKeyWord];
}

class CreateFormSubmitted extends CreateFormEvent {}
