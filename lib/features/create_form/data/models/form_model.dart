class FormModel {
  String? id;
  String title;
  int dataRetentionPeriod;
  DateTime? dateAdded;
  String userId;

  FormModel({
    this.id,
    required this.title,
    required this.dataRetentionPeriod,
    required this.userId,
  });

  FormModel.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        title = map['title'],
        dataRetentionPeriod = map['dataRetentionPeriod'],
        dateAdded = map['dateAdded'],
        userId = map['userId'];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'dataRetenrionPeriod': dataRetentionPeriod,
      'dateAdded': DateTime.now(),
      'userId': userId,
    };
  }
}
