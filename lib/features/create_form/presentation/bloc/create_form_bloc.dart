import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inteligent_forms/features/create_form/presentation/bloc/create_form_state.dart';

import '../../domain/entities/field.dart';
import '../../domain/entities/section.dart';

part 'create_form_event.dart';

class CreateFormBloc extends Bloc<CreateFormEvent, CreateFormState> {
  CreateFormBloc() : super(CreateFormInitial()) {
    on<CreateFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
