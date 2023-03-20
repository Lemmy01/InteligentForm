import '../../../../core/utils/date_time_functions.dart';

class FormEntity {
  final String title;
  final List<String> dynamicFieldNames;
  final DateTime dateAdded;

  FormEntity({
    required this.title,
    required this.dynamicFieldNames,
    required this.dateAdded,
  });

  String get formattedDate => DateTimeFunctions.getFormattedDate(dateAdded);
}
