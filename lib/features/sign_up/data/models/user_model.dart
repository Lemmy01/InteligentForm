class UserModel {
  final String userId;
  final String name;
  final String accountType;
  final String emailAddress;
  final String? fiscalCode;
  final String address;
  final String subscriptionType;

  UserModel({
    required this.userId,
    required this.name,
    required this.accountType,
    required this.emailAddress,
    required this.fiscalCode,
    required this.address,
    required this.subscriptionType,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
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
      userId: map['userId'],
      name: map['name'],
      accountType: map['accountType'],
      emailAddress: map['emailAddress'],
      fiscalCode: map['fiscalCode'],
      address: map['address'],
      subscriptionType: map['subscriptionType'],
    );
  }
}
