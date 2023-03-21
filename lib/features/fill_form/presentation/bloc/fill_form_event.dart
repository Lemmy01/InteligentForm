part of 'fill_form_bloc.dart';

abstract class FillFormEvent extends Equatable {
  const FillFormEvent();

  @override
  List<Object> get props => [];
}

class DownloadFormEvent extends FillFormEvent {
  final String url;

  const DownloadFormEvent(this.url);

  @override
  List<Object> get props => [url];
}

class CheckIfFormExistsEvent extends FillFormEvent {
  final String url;

  const CheckIfFormExistsEvent(this.url);

  @override
  List<Object> get props => [url];
}
