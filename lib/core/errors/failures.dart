import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class FailureEntity with _$FailureEntity {
  const FailureEntity._(); // This constructor is needed to have custom methods in Freezed.
  const factory FailureEntity.noDataFetched({required String failureMessage}) =
      NoDataFetched;

  const factory FailureEntity.serverFailure({required String failureMessage}) =
      ServerFailure;

  const factory FailureEntity.fieldFailure({required String failureMessage}) =
      FieldFailure;

  const factory FailureEntity.networkFailure({required String failureMessage}) =
      NetworkFailure;

  const factory FailureEntity.easyImpactFailure({required String failureMessage}) =
      EasyFailure;

  const factory FailureEntity.mediumImpactFailure({required String failureMessage}) =
      MediumFailure;

  const factory FailureEntity.hardImpactFailure({required String failureMessage}) =
      HardFailure;
}
