import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/constants/string_constants.dart';
import '../../domain/entities/section_with_field.dart';
import '../../domain/usecases/fill_form_usecase.dart';

part 'fill_form_event.dart';
part 'fill_form_state.dart';

class FillFormBloc extends Bloc<FillFormEvent, FillFormState> {
  GetFormUsecase getFormUsecase;

  FillFormBloc({
    required this.getFormUsecase,
  }) : super(FillFormInitial()) {
    on<CheckIfFormExistsEvent>(_onCheckIfFormExistsEvent);
  }

  Future<void> _onCheckIfFormExistsEvent(
    CheckIfFormExistsEvent event,
    Emitter<FillFormState> emit,
  ) async {
    emit(UrlExistsLoadingState());

    (await getFormUsecase.getSectionsWithFields(event.url)).fold(
      (failure) => emit(
        const UrlExistsErrorState(
          AppStringConstants.somethingWentWrong,
        ),
      ),
      (sections) {
        if (sections.isEmpty) {
          emit(
            const UrlExistsErrorState(
              AppStringConstants.noSectionsFound,
            ),
          );
        } else {
          emit(
            UrlExistsLoadedState(
              sections,
            ),
          );
        }
      },
    );
  }
}
