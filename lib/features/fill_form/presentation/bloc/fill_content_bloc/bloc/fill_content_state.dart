import 'package:equatable/equatable.dart';

class FillContentState extends Equatable {
  final Map<String, dynamic> parametersMap;
  final String sectionsContent;

  const FillContentState({
    required this.parametersMap,
    required this.sectionsContent,
  });

  FillContentState copyWith({
    Map<String, dynamic>? parametersMap,
    String? sectionsContent,
  }) {
    return FillContentState(
      parametersMap: parametersMap ?? this.parametersMap,
      sectionsContent: sectionsContent ?? this.sectionsContent,
    );
  }

  @override
  List<Object> get props => [parametersMap];
}
