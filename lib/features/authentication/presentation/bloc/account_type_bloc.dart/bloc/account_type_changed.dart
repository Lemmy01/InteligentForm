import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

import '../../../../../../core/utils/enums.dart';

@immutable
class AccountTypeChanged extends Equatable {
  const AccountTypeChanged({
    required this.accountType,
  });

  final AccountType accountType;

  @override
  List<Object> get props => [accountType];
}
