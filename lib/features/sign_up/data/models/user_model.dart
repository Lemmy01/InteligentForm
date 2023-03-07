class UserModel {
  final String name;
  final String accountType;
  final String emailAddress;
  final String? fiscalCode;
  final String address;
  final String subscriptionType;

  UserModel({
    required this.name,
    required this.accountType,
    required this.emailAddress,
    required this.fiscalCode,
    required this.address,
    required this.subscriptionType,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'accountType': accountType,
      'emailAddress': emailAddress,
      'fiscalCode': fiscalCode,
      'address': address,
      'subscriptionType': subscriptionType,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      accountType: map['accountType'],
      emailAddress: map['emailAddress'],
      fiscalCode: map['fiscalCode'],
      address: map['address'],
      subscriptionType: map['subscriptionType'],
    );
  }
}
