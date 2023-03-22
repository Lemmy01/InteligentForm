// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SectionAutoModel {
  final Map<String, dynamic> data;

  SectionAutoModel({
    required this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
    };
  }

  factory SectionAutoModel.fromMap(Map<String, dynamic> map) {
    return SectionAutoModel(
      data: Map<String, dynamic>.from(
        (map['data'] as Map<String, dynamic>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory SectionAutoModel.fromJson(String source) =>
      SectionAutoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SectionAutoModel(data: $data)';
}
