import 'package:intl/intl.dart';

class Submission {
  String content;
  DateTime dateWhenSubmitted;
  DateTime dateWhenToBeDeleted;

  Submission({
    required this.content,
    required this.dateWhenSubmitted,
    required this.dateWhenToBeDeleted,
  });

  String get getDate => DateFormat('d/MM/yyyy').format(dateWhenSubmitted);
}
