import 'package:equatable/equatable.dart';

abstract class FillContentEvent extends Equatable {
  const FillContentEvent();

  @override
  List<Object> get props => [];
}

class ChangeSectionsContent extends FillContentEvent {
  final String sectionsContent;
  const ChangeSectionsContent({
    required this.sectionsContent,
  });

  @override
  List<Object> get props => [sectionsContent];
}

class ChangeParametersMap extends FillContentEvent {
  final Map<String, dynamic> parametersMap;
  const ChangeParametersMap({
    required this.parametersMap,
  });

  @override
  List<Object> get props => [parametersMap];
}

class ResetFillContent extends FillContentEvent {}
