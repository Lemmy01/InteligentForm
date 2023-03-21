import 'package:flutter/foundation.dart';

extension EmailPassIfDebug on String {
  get ifDebug => kDebugMode ? this : null;
}
