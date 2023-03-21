import 'package:equatable/equatable.dart';

import '../../domain/entities/Submission.dart';

abstract class SubmissionsState extends Equatable {
  const SubmissionsState();

  @override
  List<Object> get props => [];
}

class SubmissionsInitial extends SubmissionsState {
  const SubmissionsInitial();

  @override
  List<Object> get props => [];
}

class SubmissionsLoading extends SubmissionsState {
  const SubmissionsLoading();

  @override
  List<Object> get props => [];
}

class SubmissionsLoaded extends SubmissionsState {
  final List<Submission> submissions;
  const SubmissionsLoaded({required this.submissions});

  @override
  List<Object> get props => [submissions];
}

class SubmissionsError extends SubmissionsState {
  final String message;
  const SubmissionsError({required this.message});

  @override
  List<Object> get props => [message];
}
