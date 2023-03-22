import 'package:bloc/bloc.dart';

import 'fill_content_event.dart';
import 'fill_content_state.dart';

class FillContentBloc extends Bloc<FillContentEvent, FillContentState> {
  FillContentBloc()
      : super(
          const FillContentState(parametersMap: {}, sectionsContent: ""),
        ) {
    on<ChangeSectionsContent>(_onChangeSectionsContent);
    on<ChangeParametersMap>(_onChangeParametersMap);
    on<ResetFillContent>(_onResetFillContent);
  }

  void _onChangeSectionsContent(
    ChangeSectionsContent event,
    Emitter<FillContentState> emit,
  ) {
    emit(
      state.copyWith(
        sectionsContent: event.sectionsContent,
      ),
    );
  }

  void _onChangeParametersMap(
    ChangeParametersMap event,
    Emitter<FillContentState> emit,
  ) {
    emit(
      state.copyWith(
        parametersMap: event.parametersMap,
      ),
    );
  }

  void _onResetFillContent(
    ResetFillContent event,
    Emitter<FillContentState> emit,
  ) {
    emit(
      const FillContentState(parametersMap: {}, sectionsContent: ""),
    );
  }
}
