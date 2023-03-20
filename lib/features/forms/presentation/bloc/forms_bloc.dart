import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inteligent_forms/features/forms/domain/entities/form_entity.dart';
import 'package:inteligent_forms/features/forms/domain/usecases/forms_usecase.dart';

import '../../../create_form/presentation/bloc/create_form_bloc/create_form_bloc.dart';
import '../../../create_form/presentation/bloc/create_form_bloc/create_form_event.dart';

part 'forms_event.dart';
part 'forms_state.dart';

class FormsBloc extends Bloc<FormsEvent, FormsState> {
  final FormsUseCase formsUseCase;
  final CreateFormBloc createFormBloc;

  late StreamSubscription createFormBlocSubscription;

  FormsBloc({
    required this.formsUseCase,
    required this.createFormBloc,
  }) : super(FormsInitial()) {
    createFormBlocSubscription = createFormBloc.stream.listen(
      (state) {
        if (state is CreateFormSubmitted) {
          log('Ar trebui sa fac reload la lista de forms');
          add(FormsLoadStarted());
        }
      },
    );

    on<FormsLoadStarted>(_onFormsLoadStarted);
    on<FormsDeleteEvent>(_onFormsDeleteEvent);
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

  Future<void> _onFormsDeleteEvent(
    FormsDeleteEvent event,
    Emitter<FormsState> emit,
  ) async {
    (await formsUseCase.deleteForm(event.formEntity)).fold(
      (failure) => emit(
        FormsError(
          message: failure.failureMessage,
        ),
      ),
      //dupa ce se sterge un form, se face reload la lista de forms
      (formEntities) => add(
        FormsLoadStarted(),
      ),
    );
  }

  @override
  Future<void> close() {
    createFormBlocSubscription.cancel();
    return super.close();
  }
}
