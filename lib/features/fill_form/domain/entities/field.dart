class Field {
  String keyWord;
  bool mandatory;
  String fieldType;
  List<String>? options;
  List<String> docKeys;

  Field({
    required this.keyWord,
    required this.mandatory,
    required this.fieldType,
    this.options,
    required this.docKeys,
  });
}
