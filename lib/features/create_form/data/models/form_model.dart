class FormModel {
  String? id;
  String title;
  int dataRetentionPeriod;
  DateTime? dateAdded;

  FormModel({
    this.id,
    required this.title,
    required this.dataRetentionPeriod,
  });

  FormModel.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        title = map['title'],
        dataRetentionPeriod = map['dataRetentionPeriod'],
        dateAdded = map['dateAdded'];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'dataRetenrionPeriod': dataRetentionPeriod,
      'dateAdded': DateTime.now(),
    };
  }
}
