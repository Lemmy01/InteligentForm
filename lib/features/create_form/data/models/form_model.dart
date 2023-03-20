import 'package:cloud_firestore/cloud_firestore.dart';

class FormModel {
  String? id;
  String title;
  int dataRetentionPeriod;
  String userId;
  DateTime? dateAdded;

  FormModel({
    this.id,
    required this.title,
    required this.dataRetentionPeriod,
    required this.userId,
  });

  FormModel.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        title = map['title'],
        dataRetentionPeriod = (map['dataRetentionPeriod'] as double).toInt(),
        dateAdded = (map['dateAdded'] as Timestamp).toDate(),
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
