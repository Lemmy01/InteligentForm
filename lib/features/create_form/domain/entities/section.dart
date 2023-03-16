class Section {
  String content;
  String scanType;
  int sectionNumber;

  Section({
    required this.content,
    required this.scanType,
    required this.sectionNumber,
  });

  //toString
  @override
  String toString() {
    return 'Section('
        'content: $content, '
        'scanType: $scanType,'
        'sectionNumber: $sectionNumber)';
  }
}
