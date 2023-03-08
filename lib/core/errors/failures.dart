import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._(); // This constructor is needed to have custom methods in Freezed.
  const factory Failure.noDataFetched({required String failureMessage}) =
      NoDataFetched;

  const factory Failure.serverFailure({required String failureMessage}) =
      ServerFailure;

  const factory Failure.fieldFailure({required String failureMessage}) =
      FieldFailure;

  const factory Failure.networkFailure({required String failureMessage}) =
      NetworkFailure;

  const factory Failure.easyImpactFailure({required String failureMessage}) =
      EasyFailure;

  const factory Failure.mediumImpactFailure({required String failureMessage}) =
      MediumFailure;

  const factory Failure.hardImpactFailure({required String failureMessage}) =
      HardFailure;
}
