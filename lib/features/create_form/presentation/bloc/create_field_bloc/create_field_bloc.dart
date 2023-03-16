import 'package:bloc/bloc.dart';
import 'package:inteligent_forms/features/create_form/presentation/bloc/create_field_bloc/create_field_event.dart';

import 'create_field_state.dart';

class CreateFieldBloc extends Bloc<CreateFieldEvent, CreateFieldState> {
  CreateFieldBloc() : super(CreateFieldState.initial()) {
    on<CreateFieldLabelChanged>(_onCreateFieldLabelChanged);
    on<CreateFieldKeyWordChanged>(_onCreateFieldKeyWordChanged);
    on<CreateFieldIsMandatoryChanged>(_onCreateFieldIsMandatoryChanged);
    on<CreateFieldTypeChanged>(_onCreateFieldFieldTypeChanged);
    on<CreateFieldShowDocumentKeywordsChanged>(
      _onCreateFieldShowDocumentKeywordsChanged,
    );
    on<CreateFieldDocumentKeywordsChanged>(
      _onCreateFieldDocumentKeywordsChanged,
    );
    on<CreateFieldShowTypesChanged>(
      _onCreateFieldShowTypesChanged,
    );
  }

  void _onCreateFieldLabelChanged(
    CreateFieldLabelChanged event,
    Emitter<CreateFieldState> emit,
  ) {
    emit(state.copyWith(label: event.label));
  }

  void _onCreateFieldKeyWordChanged(
    CreateFieldKeyWordChanged event,
    Emitter<CreateFieldState> emit,
  ) {
    emit(state.copyWith(keyWord: event.keyWord));
  }

  void _onCreateFieldIsMandatoryChanged(
    CreateFieldIsMandatoryChanged event,
    Emitter<CreateFieldState> emit,
  ) {
    emit(state.copyWith(isMandatory: event.isMandatory));
  }

  void _onCreateFieldFieldTypeChanged(
    CreateFieldTypeChanged event,
    Emitter<CreateFieldState> emit,
  ) {
    emit(state.copyWith(fieldType: event.fieldType));
  }

  void _onCreateFieldShowDocumentKeywordsChanged(
    CreateFieldShowDocumentKeywordsChanged event,
    Emitter<CreateFieldState> emit,
  ) {
    emit(state.copyWith(
      showDocumentKeywords: event.showDocumentKeywords,
    ));
  }

  void _onCreateFieldDocumentKeywordsChanged(
    CreateFieldDocumentKeywordsChanged event,
    Emitter<CreateFieldState> emit,
  ) {
    emit(state.copyWith(
      documentKeywords: event.documentKeywords,
    ));
  }

  void _onCreateFieldShowTypesChanged(
    CreateFieldShowTypesChanged event,
    Emitter<CreateFieldState> emit,
  ) {
    emit(state.copyWith(
      showTypes: event.showTypes,
    ));
  }
}
