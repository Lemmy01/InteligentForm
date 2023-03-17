import 'package:bloc/bloc.dart';
import 'package:inteligent_forms/features/create_form/presentation/bloc/create_field_bloc/create_field_event.dart';

import 'create_field_state.dart';

class CreateFieldBloc extends Bloc<CreateFieldEvent, CreateFieldState> {
  CreateFieldBloc() : super(CreateFieldState.initial()) {
    on<CreateFieldIsMandatoryChanged>(_onCreateFieldIsMandatoryChanged);
    on<CreateFieldTypeChanged>(_onCreateFieldFieldTypeChanged);
    on<ShowDocumentKeywordsChanged>(
      _onCreateFieldShowDocumentKeywordsChanged,
    );
    on<DocumentKeywordsChanged>(
      _onCreateFieldDocumentKeywordsChanged,
    );
    on<ShowOptionsChanged>(
      _onCreateFieldShowTypesChanged,
    );

    on<OptionsChanged>(
      _onCreateFieldOptionsChanged,
    );
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
    ShowDocumentKeywordsChanged event,
    Emitter<CreateFieldState> emit,
  ) {
    emit(state.copyWith(
      showDocumentKeywords: event.showDocumentKeywords,
    ));
  }

  void _onCreateFieldDocumentKeywordsChanged(
    DocumentKeywordsChanged event,
    Emitter<CreateFieldState> emit,
  ) {
    emit(state.copyWith(
      documentKeywords: event.documentKeywords,
    ));
  }

  void _onCreateFieldShowTypesChanged(
    ShowOptionsChanged event,
    Emitter<CreateFieldState> emit,
  ) {
    emit(state.copyWith(
      showTypes: event.showOptions,
    ));
  }

  void _onCreateFieldOptionsChanged(
    OptionsChanged event,
    Emitter<CreateFieldState> emit,
  ) {
    emit(state.copyWith(
      options: event.options,
    ));
  }
}
