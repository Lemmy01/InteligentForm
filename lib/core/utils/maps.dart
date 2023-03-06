import 'package:inteligent_forms/core/utils/enums.dart';

String accountTypeToString({
  required AccountType accountType,
}) {
  switch (accountType) {
    case AccountType.individual:
      return 'Individual';
    case AccountType.company:
      return 'Company';
    case AccountType.publicInstitution:
      return 'Public Institution';
    default:
      return 'Individual';
  }
}
