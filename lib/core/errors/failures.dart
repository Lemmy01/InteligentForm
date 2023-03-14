abstract class Failure {
  final String failureMessage;

  Failure({
    required this.failureMessage,
  });
}

class HardFailure extends Failure {
  HardFailure({
    required super.failureMessage,
  });
}

class EasyFailure extends Failure {
  EasyFailure({
    required super.failureMessage,
  });
}

class MediumFailure extends Failure {
  MediumFailure({
    required super.failureMessage,
  });
}

class FieldFailure extends Failure {
  FieldFailure({
    required super.failureMessage,
  });
}
