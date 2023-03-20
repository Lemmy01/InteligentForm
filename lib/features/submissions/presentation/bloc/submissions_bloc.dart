import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'submissions_event.dart';
part 'submissions_state.dart';

class SubmissionsBloc extends Bloc<SubmissionsEvent, SubmissionsState> {
  SubmissionsBloc() : super(SubmissionsInitial()) {
    on<SubmissionsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
