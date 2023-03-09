import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'fill_form_event.dart';
part 'fill_form_state.dart';

class FillFormBloc extends Bloc<FillFormEvent, FillFormState> {
  FillFormBloc() : super(FillFormInitial()) {
    on<FillFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
