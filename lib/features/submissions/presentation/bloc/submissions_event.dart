import 'package:equatable/equatable.dart';

abstract class SubmissionsEvent extends Equatable {
  const SubmissionsEvent();

  @override
  List<Object> get props => [];
}

class SubmissionsRequested extends SubmissionsEvent {
  final String formId;
  const SubmissionsRequested({required this.formId});

  @override
  List<Object> get props => [formId];
}
