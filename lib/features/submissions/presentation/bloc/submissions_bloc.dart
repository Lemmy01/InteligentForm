import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:inteligent_forms/features/submissions/domain/usecases/submission_usecase.dart';
import 'package:inteligent_forms/features/submissions/presentation/bloc/submissions_event.dart';
import 'package:inteligent_forms/features/submissions/presentation/bloc/submissions_state.dart';

class SubmissionsBloc extends Bloc<SubmissionsEvent, SubmissionsState> {
  final SubmissionUsecase submissionUsecase;

  SubmissionsBloc({required this.submissionUsecase})
      : super(
          const SubmissionsInitial(),
        ) {
    on<SubmissionsRequested>(_onSubmissionsRequested);
  }

  Future<void> _onSubmissionsRequested(
    SubmissionsRequested event,
    Emitter<SubmissionsState> emit,
  ) async {
    emit(const SubmissionsLoading());

    (await submissionUsecase.getSubmissions(event.formId)).fold(
      (failure) => emit(SubmissionsError(
        message: failure.failureMessage,
      )),
      (submissions) => emit(
        SubmissionsLoaded(
          submissions: submissions,
        ),
      ),
    );
  }
}
