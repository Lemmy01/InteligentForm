import 'package:equatable/equatable.dart';

import '../../../../../../core/utils/enums.dart';

class AccountTypeState extends Equatable {
  final AccountType accountType;
  final List<AccountType> accountTypes = AccountType.values;

  const AccountTypeState({
    required this.accountType,
  });

  @override
  List<Object> get props => [accountType, accountTypes];
}
