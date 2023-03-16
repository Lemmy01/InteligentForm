class Field {
  String label;
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
    required this.label,
  });

  @override
  String toString() {
    return 'Field('
        'label: $label, '
        'keyWord: $keyWord, '
        'mandatory: $mandatory, '
        'fieldType: $fieldType, '
        'options: $options, '
        'docKeys: $docKeys)';
  }
}
