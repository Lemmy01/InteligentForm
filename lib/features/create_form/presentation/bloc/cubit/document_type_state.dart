import 'package:equatable/equatable.dart';
import 'package:inteligent_forms/core/utils/extensions.dart';

import '../../../../../core/utils/enums.dart';

class DocumentTypeState extends Equatable {
  final String dropdownValue;

  const DocumentTypeState({
    required this.dropdownValue,
  });

  factory DocumentTypeState.initial() => DocumentTypeState(
        dropdownValue: ScanDocumentType.none.toShortString(),
      );

  @override
  List<Object?> get props => [dropdownValue];
}
