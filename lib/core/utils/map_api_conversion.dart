Map<String, dynamic> convertApiMapToMap(
  Map<String, dynamic> apiMap,
  Map<String, dynamic> oldMap,
) {
  final List<Map<String, dynamic>> newApiMap = <Map<String, dynamic>>[];

  return apiMap['analyzeResult']['keyValuePairs'][0];
}
