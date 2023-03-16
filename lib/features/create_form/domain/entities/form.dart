class Form {
  String title;
  int dataRetentionPeriod;

  Form({
    required this.title,
    required this.dataRetentionPeriod,
  });

  @override
  String toString() {
    return 'Form('
        'title: $title, '
        'dataRetentionPeriod: $dataRetentionPeriod)';
  }
}
