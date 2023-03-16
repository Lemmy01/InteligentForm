import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inteligent_forms/features/create_form/presentation/bloc/create_form_state.dart';

import '../../domain/entities/field.dart';
import '../../domain/entities/section.dart';
import '../../domain/usecases/create_form.dart';

part 'create_form_event.dart';

class CreateFormBloc extends Bloc<CreateFormEvent, CreateFormState> {
  final CreateForm createFormUseCase;

  CreateFormBloc({
    required this.createFormUseCase,
  }) : super(const CreateFormState()) {
    on<ChangeTitle>(_onChangeTitle);
    on<ChangeDataRetentionPeriod>(_onChangeDataRetentionPeriod);
    on<AddSection>(_onAddSection);
    on<RemoveSection>(_onRemoveSection);
    on<AddField>(_onAddField);
    on<RemoveField>(_onRemoveField);
    on<CreateFormSubmitted>(_onCreateFormSubmitted);
  }

  void _onChangeTitle(
    ChangeTitle event,
    Emitter<CreateFormState> emit,
  ) {
    emit(
      state.copyWith(
        title: event.title,
      ),
    );
  }

  void _onChangeDataRetentionPeriod(
    ChangeDataRetentionPeriod event,
    Emitter<CreateFormState> emit,
  ) {
    emit(
      state.copyWith(
        dataRetentionPeriod: event.dataRetentionPeriod,
      ),
    );
  }

  void _onAddSection(
    AddSection event,
    Emitter<CreateFormState> emit,
  ) {
    emit(
      state.copyWith(
        sections: [...state.sections, event.section],
      ),
    );
  }

  void _onRemoveSection(
    RemoveSection event,
    Emitter<CreateFormState> emit,
  ) {
    emit(
      state.copyWith(
        sections: state.sections
            .where((section) => section.sectionNumber != event.sectionNumber)
            .toList(),
      ),
    );
  }

  void _onAddField(
    AddField event,
    Emitter<CreateFormState> emit,
  ) {
    emit(
      state.copyWith(
        fields: [...state.fields, event.field],
      ),
    );
  }

  void _onRemoveField(
    RemoveField event,
    Emitter<CreateFormState> emit,
  ) {
    emit(
      state.copyWith(
        fields: state.fields
            .where((field) => field.keyWord != event.keyWord)
            .toList(),
      ),
    );
  }

  void _onCreateFormSubmitted(
    CreateFormSubmitted event,
    Emitter<CreateFormState> emit,
  ) async {
    emit(state.copyWith(status: CreateFormStatus.loading));

    (await createFormUseCase(
      title: state.title,
      dataRetentionPeriod: state.dataRetentionPeriod,
      sections: state.sections,
      fields: state.fields,
    ))
        .fold(
      (l) => emit(
        state.copyWith(status: CreateFormStatus.error),
      ),
      (r) => emit(
        state.copyWith(status: CreateFormStatus.success),
      ),
    );
  }
}
