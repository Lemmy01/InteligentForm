import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inteligent_forms/features/forms/domain/entities/form_entity.dart';
import 'package:inteligent_forms/features/forms/domain/usecases/forms_usecase.dart';

part 'forms_event.dart';
part 'forms_state.dart';

class FormsBloc extends Bloc<FormsEvent, FormsState> {
  final FormsUseCase formsUseCase;

  FormsBloc({
    required this.formsUseCase,
  }) : super(FormsInitial()) {
    on<FormsLoadStarted>(_onFormsLoadStarted);
  }

  Future<void> _onFormsLoadStarted(
    FormsLoadStarted event,
    Emitter<FormsState> emit,
  ) async {
    emit(FormsLoading());

    (await formsUseCase.getForms()).fold(
      (failure) => emit(
        FormsError(
          message: failure.failureMessage,
        ),
      ),
      (formEntities) => emit(
        FormsLoaded(
          formEntities: formEntities,
        ),
      ),
    );
  }
}
