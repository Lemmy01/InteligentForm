import 'package:flutter/foundation.dart';

import 'enums.dart';

extension EmailPassIfDebug on String {
  get ifDebug => kDebugMode ? this : null;
}

extension ScanDocumentTypetoString on ScanDocumentType {
  String toShortString() {
    switch (this) {
      case ScanDocumentType.identityCard:
        return 'Identity Card';
      case ScanDocumentType.birthCertificate:
        return 'Birth Certificate';
      case ScanDocumentType.passport:
        return 'Passport';
      case ScanDocumentType.vehicleIdentityCard:
        return 'Vehicle Identity Card';
      case ScanDocumentType.anyDocument:
        return 'Any Document';
      default:
        return 'Any Document';
    }
  }
}

extension AccountTypeToString on AccountType {
  String toShortString() {
    switch (this) {
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
}

extension FieldTypeToString on FieldType {
  String toShortString() {
    switch (this) {
      case FieldType.text:
        return 'Text';
      case FieldType.number:
        return 'Number';
      case FieldType.decimal:
        return 'Decimal';
      case FieldType.date:
        return 'Date';
      case FieldType.singleChoice:
        return 'Single Choice';
      case FieldType.multipleChoice:
        return 'Multiple Choice';
      default:
        return 'Text';
    }
  }
}
