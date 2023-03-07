// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FailureEntity {
  String get failureMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureMessage) noDataFetched,
    required TResult Function(String failureMessage) serverFailure,
    required TResult Function(String failureMessage) fieldFailure,
    required TResult Function(String failureMessage) networkFailure,
    required TResult Function(String failureMessage) easyImpactFailure,
    required TResult Function(String failureMessage) mediumImpactFailure,
    required TResult Function(String failureMessage) hardImpactFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureMessage)? noDataFetched,
    TResult? Function(String failureMessage)? serverFailure,
    TResult? Function(String failureMessage)? fieldFailure,
    TResult? Function(String failureMessage)? networkFailure,
    TResult? Function(String failureMessage)? easyImpactFailure,
    TResult? Function(String failureMessage)? mediumImpactFailure,
    TResult? Function(String failureMessage)? hardImpactFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureMessage)? noDataFetched,
    TResult Function(String failureMessage)? serverFailure,
    TResult Function(String failureMessage)? fieldFailure,
    TResult Function(String failureMessage)? networkFailure,
    TResult Function(String failureMessage)? easyImpactFailure,
    TResult Function(String failureMessage)? mediumImpactFailure,
    TResult Function(String failureMessage)? hardImpactFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoDataFetched value) noDataFetched,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FieldFailure value) fieldFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(EasyFailure value) easyImpactFailure,
    required TResult Function(MediumFailure value) mediumImpactFailure,
    required TResult Function(HardFailure value) hardImpactFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoDataFetched value)? noDataFetched,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FieldFailure value)? fieldFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(EasyFailure value)? easyImpactFailure,
    TResult? Function(MediumFailure value)? mediumImpactFailure,
    TResult? Function(HardFailure value)? hardImpactFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDataFetched value)? noDataFetched,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FieldFailure value)? fieldFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(EasyFailure value)? easyImpactFailure,
    TResult Function(MediumFailure value)? mediumImpactFailure,
    TResult Function(HardFailure value)? hardImpactFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureEntityCopyWith<FailureEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureEntityCopyWith<$Res> {
  factory $FailureEntityCopyWith(
          FailureEntity value, $Res Function(FailureEntity) then) =
      _$FailureEntityCopyWithImpl<$Res, FailureEntity>;
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class _$FailureEntityCopyWithImpl<$Res, $Val extends FailureEntity>
    implements $FailureEntityCopyWith<$Res> {
  _$FailureEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_value.copyWith(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoDataFetchedCopyWith<$Res>
    implements $FailureEntityCopyWith<$Res> {
  factory _$$NoDataFetchedCopyWith(
          _$NoDataFetched value, $Res Function(_$NoDataFetched) then) =
      __$$NoDataFetchedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$NoDataFetchedCopyWithImpl<$Res>
    extends _$FailureEntityCopyWithImpl<$Res, _$NoDataFetched>
    implements _$$NoDataFetchedCopyWith<$Res> {
  __$$NoDataFetchedCopyWithImpl(
      _$NoDataFetched _value, $Res Function(_$NoDataFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$NoDataFetched(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoDataFetched extends NoDataFetched {
  const _$NoDataFetched({required this.failureMessage}) : super._();

  @override
  final String failureMessage;

  @override
  String toString() {
    return 'FailureEntity.noDataFetched(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoDataFetched &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoDataFetchedCopyWith<_$NoDataFetched> get copyWith =>
      __$$NoDataFetchedCopyWithImpl<_$NoDataFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureMessage) noDataFetched,
    required TResult Function(String failureMessage) serverFailure,
    required TResult Function(String failureMessage) fieldFailure,
    required TResult Function(String failureMessage) networkFailure,
    required TResult Function(String failureMessage) easyImpactFailure,
    required TResult Function(String failureMessage) mediumImpactFailure,
    required TResult Function(String failureMessage) hardImpactFailure,
  }) {
    return noDataFetched(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureMessage)? noDataFetched,
    TResult? Function(String failureMessage)? serverFailure,
    TResult? Function(String failureMessage)? fieldFailure,
    TResult? Function(String failureMessage)? networkFailure,
    TResult? Function(String failureMessage)? easyImpactFailure,
    TResult? Function(String failureMessage)? mediumImpactFailure,
    TResult? Function(String failureMessage)? hardImpactFailure,
  }) {
    return noDataFetched?.call(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureMessage)? noDataFetched,
    TResult Function(String failureMessage)? serverFailure,
    TResult Function(String failureMessage)? fieldFailure,
    TResult Function(String failureMessage)? networkFailure,
    TResult Function(String failureMessage)? easyImpactFailure,
    TResult Function(String failureMessage)? mediumImpactFailure,
    TResult Function(String failureMessage)? hardImpactFailure,
    required TResult orElse(),
  }) {
    if (noDataFetched != null) {
      return noDataFetched(failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoDataFetched value) noDataFetched,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FieldFailure value) fieldFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(EasyFailure value) easyImpactFailure,
    required TResult Function(MediumFailure value) mediumImpactFailure,
    required TResult Function(HardFailure value) hardImpactFailure,
  }) {
    return noDataFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoDataFetched value)? noDataFetched,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FieldFailure value)? fieldFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(EasyFailure value)? easyImpactFailure,
    TResult? Function(MediumFailure value)? mediumImpactFailure,
    TResult? Function(HardFailure value)? hardImpactFailure,
  }) {
    return noDataFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDataFetched value)? noDataFetched,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FieldFailure value)? fieldFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(EasyFailure value)? easyImpactFailure,
    TResult Function(MediumFailure value)? mediumImpactFailure,
    TResult Function(HardFailure value)? hardImpactFailure,
    required TResult orElse(),
  }) {
    if (noDataFetched != null) {
      return noDataFetched(this);
    }
    return orElse();
  }
}

abstract class NoDataFetched extends FailureEntity {
  const factory NoDataFetched({required final String failureMessage}) =
      _$NoDataFetched;
  const NoDataFetched._() : super._();

  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$NoDataFetchedCopyWith<_$NoDataFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res>
    implements $FailureEntityCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res>
    extends _$FailureEntityCopyWithImpl<$Res, _$ServerFailure>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$ServerFailure(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailure extends ServerFailure {
  const _$ServerFailure({required this.failureMessage}) : super._();

  @override
  final String failureMessage;

  @override
  String toString() {
    return 'FailureEntity.serverFailure(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      __$$ServerFailureCopyWithImpl<_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureMessage) noDataFetched,
    required TResult Function(String failureMessage) serverFailure,
    required TResult Function(String failureMessage) fieldFailure,
    required TResult Function(String failureMessage) networkFailure,
    required TResult Function(String failureMessage) easyImpactFailure,
    required TResult Function(String failureMessage) mediumImpactFailure,
    required TResult Function(String failureMessage) hardImpactFailure,
  }) {
    return serverFailure(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureMessage)? noDataFetched,
    TResult? Function(String failureMessage)? serverFailure,
    TResult? Function(String failureMessage)? fieldFailure,
    TResult? Function(String failureMessage)? networkFailure,
    TResult? Function(String failureMessage)? easyImpactFailure,
    TResult? Function(String failureMessage)? mediumImpactFailure,
    TResult? Function(String failureMessage)? hardImpactFailure,
  }) {
    return serverFailure?.call(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureMessage)? noDataFetched,
    TResult Function(String failureMessage)? serverFailure,
    TResult Function(String failureMessage)? fieldFailure,
    TResult Function(String failureMessage)? networkFailure,
    TResult Function(String failureMessage)? easyImpactFailure,
    TResult Function(String failureMessage)? mediumImpactFailure,
    TResult Function(String failureMessage)? hardImpactFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoDataFetched value) noDataFetched,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FieldFailure value) fieldFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(EasyFailure value) easyImpactFailure,
    required TResult Function(MediumFailure value) mediumImpactFailure,
    required TResult Function(HardFailure value) hardImpactFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoDataFetched value)? noDataFetched,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FieldFailure value)? fieldFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(EasyFailure value)? easyImpactFailure,
    TResult? Function(MediumFailure value)? mediumImpactFailure,
    TResult? Function(HardFailure value)? hardImpactFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDataFetched value)? noDataFetched,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FieldFailure value)? fieldFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(EasyFailure value)? easyImpactFailure,
    TResult Function(MediumFailure value)? mediumImpactFailure,
    TResult Function(HardFailure value)? hardImpactFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends FailureEntity {
  const factory ServerFailure({required final String failureMessage}) =
      _$ServerFailure;
  const ServerFailure._() : super._();

  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FieldFailureCopyWith<$Res>
    implements $FailureEntityCopyWith<$Res> {
  factory _$$FieldFailureCopyWith(
          _$FieldFailure value, $Res Function(_$FieldFailure) then) =
      __$$FieldFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$FieldFailureCopyWithImpl<$Res>
    extends _$FailureEntityCopyWithImpl<$Res, _$FieldFailure>
    implements _$$FieldFailureCopyWith<$Res> {
  __$$FieldFailureCopyWithImpl(
      _$FieldFailure _value, $Res Function(_$FieldFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$FieldFailure(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FieldFailure extends FieldFailure {
  const _$FieldFailure({required this.failureMessage}) : super._();

  @override
  final String failureMessage;

  @override
  String toString() {
    return 'FailureEntity.fieldFailure(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldFailureCopyWith<_$FieldFailure> get copyWith =>
      __$$FieldFailureCopyWithImpl<_$FieldFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureMessage) noDataFetched,
    required TResult Function(String failureMessage) serverFailure,
    required TResult Function(String failureMessage) fieldFailure,
    required TResult Function(String failureMessage) networkFailure,
    required TResult Function(String failureMessage) easyImpactFailure,
    required TResult Function(String failureMessage) mediumImpactFailure,
    required TResult Function(String failureMessage) hardImpactFailure,
  }) {
    return fieldFailure(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureMessage)? noDataFetched,
    TResult? Function(String failureMessage)? serverFailure,
    TResult? Function(String failureMessage)? fieldFailure,
    TResult? Function(String failureMessage)? networkFailure,
    TResult? Function(String failureMessage)? easyImpactFailure,
    TResult? Function(String failureMessage)? mediumImpactFailure,
    TResult? Function(String failureMessage)? hardImpactFailure,
  }) {
    return fieldFailure?.call(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureMessage)? noDataFetched,
    TResult Function(String failureMessage)? serverFailure,
    TResult Function(String failureMessage)? fieldFailure,
    TResult Function(String failureMessage)? networkFailure,
    TResult Function(String failureMessage)? easyImpactFailure,
    TResult Function(String failureMessage)? mediumImpactFailure,
    TResult Function(String failureMessage)? hardImpactFailure,
    required TResult orElse(),
  }) {
    if (fieldFailure != null) {
      return fieldFailure(failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoDataFetched value) noDataFetched,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FieldFailure value) fieldFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(EasyFailure value) easyImpactFailure,
    required TResult Function(MediumFailure value) mediumImpactFailure,
    required TResult Function(HardFailure value) hardImpactFailure,
  }) {
    return fieldFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoDataFetched value)? noDataFetched,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FieldFailure value)? fieldFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(EasyFailure value)? easyImpactFailure,
    TResult? Function(MediumFailure value)? mediumImpactFailure,
    TResult? Function(HardFailure value)? hardImpactFailure,
  }) {
    return fieldFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDataFetched value)? noDataFetched,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FieldFailure value)? fieldFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(EasyFailure value)? easyImpactFailure,
    TResult Function(MediumFailure value)? mediumImpactFailure,
    TResult Function(HardFailure value)? hardImpactFailure,
    required TResult orElse(),
  }) {
    if (fieldFailure != null) {
      return fieldFailure(this);
    }
    return orElse();
  }
}

abstract class FieldFailure extends FailureEntity {
  const factory FieldFailure({required final String failureMessage}) =
      _$FieldFailure;
  const FieldFailure._() : super._();

  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$FieldFailureCopyWith<_$FieldFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureCopyWith<$Res>
    implements $FailureEntityCopyWith<$Res> {
  factory _$$NetworkFailureCopyWith(
          _$NetworkFailure value, $Res Function(_$NetworkFailure) then) =
      __$$NetworkFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$NetworkFailureCopyWithImpl<$Res>
    extends _$FailureEntityCopyWithImpl<$Res, _$NetworkFailure>
    implements _$$NetworkFailureCopyWith<$Res> {
  __$$NetworkFailureCopyWithImpl(
      _$NetworkFailure _value, $Res Function(_$NetworkFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$NetworkFailure(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkFailure extends NetworkFailure {
  const _$NetworkFailure({required this.failureMessage}) : super._();

  @override
  final String failureMessage;

  @override
  String toString() {
    return 'FailureEntity.networkFailure(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureCopyWith<_$NetworkFailure> get copyWith =>
      __$$NetworkFailureCopyWithImpl<_$NetworkFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureMessage) noDataFetched,
    required TResult Function(String failureMessage) serverFailure,
    required TResult Function(String failureMessage) fieldFailure,
    required TResult Function(String failureMessage) networkFailure,
    required TResult Function(String failureMessage) easyImpactFailure,
    required TResult Function(String failureMessage) mediumImpactFailure,
    required TResult Function(String failureMessage) hardImpactFailure,
  }) {
    return networkFailure(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureMessage)? noDataFetched,
    TResult? Function(String failureMessage)? serverFailure,
    TResult? Function(String failureMessage)? fieldFailure,
    TResult? Function(String failureMessage)? networkFailure,
    TResult? Function(String failureMessage)? easyImpactFailure,
    TResult? Function(String failureMessage)? mediumImpactFailure,
    TResult? Function(String failureMessage)? hardImpactFailure,
  }) {
    return networkFailure?.call(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureMessage)? noDataFetched,
    TResult Function(String failureMessage)? serverFailure,
    TResult Function(String failureMessage)? fieldFailure,
    TResult Function(String failureMessage)? networkFailure,
    TResult Function(String failureMessage)? easyImpactFailure,
    TResult Function(String failureMessage)? mediumImpactFailure,
    TResult Function(String failureMessage)? hardImpactFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoDataFetched value) noDataFetched,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FieldFailure value) fieldFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(EasyFailure value) easyImpactFailure,
    required TResult Function(MediumFailure value) mediumImpactFailure,
    required TResult Function(HardFailure value) hardImpactFailure,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoDataFetched value)? noDataFetched,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FieldFailure value)? fieldFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(EasyFailure value)? easyImpactFailure,
    TResult? Function(MediumFailure value)? mediumImpactFailure,
    TResult? Function(HardFailure value)? hardImpactFailure,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDataFetched value)? noDataFetched,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FieldFailure value)? fieldFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(EasyFailure value)? easyImpactFailure,
    TResult Function(MediumFailure value)? mediumImpactFailure,
    TResult Function(HardFailure value)? hardImpactFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure extends FailureEntity {
  const factory NetworkFailure({required final String failureMessage}) =
      _$NetworkFailure;
  const NetworkFailure._() : super._();

  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$NetworkFailureCopyWith<_$NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EasyFailureCopyWith<$Res>
    implements $FailureEntityCopyWith<$Res> {
  factory _$$EasyFailureCopyWith(
          _$EasyFailure value, $Res Function(_$EasyFailure) then) =
      __$$EasyFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$EasyFailureCopyWithImpl<$Res>
    extends _$FailureEntityCopyWithImpl<$Res, _$EasyFailure>
    implements _$$EasyFailureCopyWith<$Res> {
  __$$EasyFailureCopyWithImpl(
      _$EasyFailure _value, $Res Function(_$EasyFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$EasyFailure(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EasyFailure extends EasyFailure {
  const _$EasyFailure({required this.failureMessage}) : super._();

  @override
  final String failureMessage;

  @override
  String toString() {
    return 'FailureEntity.easyImpactFailure(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EasyFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EasyFailureCopyWith<_$EasyFailure> get copyWith =>
      __$$EasyFailureCopyWithImpl<_$EasyFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureMessage) noDataFetched,
    required TResult Function(String failureMessage) serverFailure,
    required TResult Function(String failureMessage) fieldFailure,
    required TResult Function(String failureMessage) networkFailure,
    required TResult Function(String failureMessage) easyImpactFailure,
    required TResult Function(String failureMessage) mediumImpactFailure,
    required TResult Function(String failureMessage) hardImpactFailure,
  }) {
    return easyImpactFailure(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureMessage)? noDataFetched,
    TResult? Function(String failureMessage)? serverFailure,
    TResult? Function(String failureMessage)? fieldFailure,
    TResult? Function(String failureMessage)? networkFailure,
    TResult? Function(String failureMessage)? easyImpactFailure,
    TResult? Function(String failureMessage)? mediumImpactFailure,
    TResult? Function(String failureMessage)? hardImpactFailure,
  }) {
    return easyImpactFailure?.call(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureMessage)? noDataFetched,
    TResult Function(String failureMessage)? serverFailure,
    TResult Function(String failureMessage)? fieldFailure,
    TResult Function(String failureMessage)? networkFailure,
    TResult Function(String failureMessage)? easyImpactFailure,
    TResult Function(String failureMessage)? mediumImpactFailure,
    TResult Function(String failureMessage)? hardImpactFailure,
    required TResult orElse(),
  }) {
    if (easyImpactFailure != null) {
      return easyImpactFailure(failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoDataFetched value) noDataFetched,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FieldFailure value) fieldFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(EasyFailure value) easyImpactFailure,
    required TResult Function(MediumFailure value) mediumImpactFailure,
    required TResult Function(HardFailure value) hardImpactFailure,
  }) {
    return easyImpactFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoDataFetched value)? noDataFetched,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FieldFailure value)? fieldFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(EasyFailure value)? easyImpactFailure,
    TResult? Function(MediumFailure value)? mediumImpactFailure,
    TResult? Function(HardFailure value)? hardImpactFailure,
  }) {
    return easyImpactFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDataFetched value)? noDataFetched,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FieldFailure value)? fieldFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(EasyFailure value)? easyImpactFailure,
    TResult Function(MediumFailure value)? mediumImpactFailure,
    TResult Function(HardFailure value)? hardImpactFailure,
    required TResult orElse(),
  }) {
    if (easyImpactFailure != null) {
      return easyImpactFailure(this);
    }
    return orElse();
  }
}

abstract class EasyFailure extends FailureEntity {
  const factory EasyFailure({required final String failureMessage}) =
      _$EasyFailure;
  const EasyFailure._() : super._();

  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$EasyFailureCopyWith<_$EasyFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediumFailureCopyWith<$Res>
    implements $FailureEntityCopyWith<$Res> {
  factory _$$MediumFailureCopyWith(
          _$MediumFailure value, $Res Function(_$MediumFailure) then) =
      __$$MediumFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$MediumFailureCopyWithImpl<$Res>
    extends _$FailureEntityCopyWithImpl<$Res, _$MediumFailure>
    implements _$$MediumFailureCopyWith<$Res> {
  __$$MediumFailureCopyWithImpl(
      _$MediumFailure _value, $Res Function(_$MediumFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$MediumFailure(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MediumFailure extends MediumFailure {
  const _$MediumFailure({required this.failureMessage}) : super._();

  @override
  final String failureMessage;

  @override
  String toString() {
    return 'FailureEntity.mediumImpactFailure(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediumFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediumFailureCopyWith<_$MediumFailure> get copyWith =>
      __$$MediumFailureCopyWithImpl<_$MediumFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureMessage) noDataFetched,
    required TResult Function(String failureMessage) serverFailure,
    required TResult Function(String failureMessage) fieldFailure,
    required TResult Function(String failureMessage) networkFailure,
    required TResult Function(String failureMessage) easyImpactFailure,
    required TResult Function(String failureMessage) mediumImpactFailure,
    required TResult Function(String failureMessage) hardImpactFailure,
  }) {
    return mediumImpactFailure(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureMessage)? noDataFetched,
    TResult? Function(String failureMessage)? serverFailure,
    TResult? Function(String failureMessage)? fieldFailure,
    TResult? Function(String failureMessage)? networkFailure,
    TResult? Function(String failureMessage)? easyImpactFailure,
    TResult? Function(String failureMessage)? mediumImpactFailure,
    TResult? Function(String failureMessage)? hardImpactFailure,
  }) {
    return mediumImpactFailure?.call(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureMessage)? noDataFetched,
    TResult Function(String failureMessage)? serverFailure,
    TResult Function(String failureMessage)? fieldFailure,
    TResult Function(String failureMessage)? networkFailure,
    TResult Function(String failureMessage)? easyImpactFailure,
    TResult Function(String failureMessage)? mediumImpactFailure,
    TResult Function(String failureMessage)? hardImpactFailure,
    required TResult orElse(),
  }) {
    if (mediumImpactFailure != null) {
      return mediumImpactFailure(failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoDataFetched value) noDataFetched,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FieldFailure value) fieldFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(EasyFailure value) easyImpactFailure,
    required TResult Function(MediumFailure value) mediumImpactFailure,
    required TResult Function(HardFailure value) hardImpactFailure,
  }) {
    return mediumImpactFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoDataFetched value)? noDataFetched,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FieldFailure value)? fieldFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(EasyFailure value)? easyImpactFailure,
    TResult? Function(MediumFailure value)? mediumImpactFailure,
    TResult? Function(HardFailure value)? hardImpactFailure,
  }) {
    return mediumImpactFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDataFetched value)? noDataFetched,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FieldFailure value)? fieldFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(EasyFailure value)? easyImpactFailure,
    TResult Function(MediumFailure value)? mediumImpactFailure,
    TResult Function(HardFailure value)? hardImpactFailure,
    required TResult orElse(),
  }) {
    if (mediumImpactFailure != null) {
      return mediumImpactFailure(this);
    }
    return orElse();
  }
}

abstract class MediumFailure extends FailureEntity {
  const factory MediumFailure({required final String failureMessage}) =
      _$MediumFailure;
  const MediumFailure._() : super._();

  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$MediumFailureCopyWith<_$MediumFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HardFailureCopyWith<$Res>
    implements $FailureEntityCopyWith<$Res> {
  factory _$$HardFailureCopyWith(
          _$HardFailure value, $Res Function(_$HardFailure) then) =
      __$$HardFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$HardFailureCopyWithImpl<$Res>
    extends _$FailureEntityCopyWithImpl<$Res, _$HardFailure>
    implements _$$HardFailureCopyWith<$Res> {
  __$$HardFailureCopyWithImpl(
      _$HardFailure _value, $Res Function(_$HardFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$HardFailure(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HardFailure extends HardFailure {
  const _$HardFailure({required this.failureMessage}) : super._();

  @override
  final String failureMessage;

  @override
  String toString() {
    return 'FailureEntity.hardImpactFailure(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HardFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HardFailureCopyWith<_$HardFailure> get copyWith =>
      __$$HardFailureCopyWithImpl<_$HardFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureMessage) noDataFetched,
    required TResult Function(String failureMessage) serverFailure,
    required TResult Function(String failureMessage) fieldFailure,
    required TResult Function(String failureMessage) networkFailure,
    required TResult Function(String failureMessage) easyImpactFailure,
    required TResult Function(String failureMessage) mediumImpactFailure,
    required TResult Function(String failureMessage) hardImpactFailure,
  }) {
    return hardImpactFailure(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureMessage)? noDataFetched,
    TResult? Function(String failureMessage)? serverFailure,
    TResult? Function(String failureMessage)? fieldFailure,
    TResult? Function(String failureMessage)? networkFailure,
    TResult? Function(String failureMessage)? easyImpactFailure,
    TResult? Function(String failureMessage)? mediumImpactFailure,
    TResult? Function(String failureMessage)? hardImpactFailure,
  }) {
    return hardImpactFailure?.call(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureMessage)? noDataFetched,
    TResult Function(String failureMessage)? serverFailure,
    TResult Function(String failureMessage)? fieldFailure,
    TResult Function(String failureMessage)? networkFailure,
    TResult Function(String failureMessage)? easyImpactFailure,
    TResult Function(String failureMessage)? mediumImpactFailure,
    TResult Function(String failureMessage)? hardImpactFailure,
    required TResult orElse(),
  }) {
    if (hardImpactFailure != null) {
      return hardImpactFailure(failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoDataFetched value) noDataFetched,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FieldFailure value) fieldFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(EasyFailure value) easyImpactFailure,
    required TResult Function(MediumFailure value) mediumImpactFailure,
    required TResult Function(HardFailure value) hardImpactFailure,
  }) {
    return hardImpactFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoDataFetched value)? noDataFetched,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FieldFailure value)? fieldFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(EasyFailure value)? easyImpactFailure,
    TResult? Function(MediumFailure value)? mediumImpactFailure,
    TResult? Function(HardFailure value)? hardImpactFailure,
  }) {
    return hardImpactFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDataFetched value)? noDataFetched,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FieldFailure value)? fieldFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(EasyFailure value)? easyImpactFailure,
    TResult Function(MediumFailure value)? mediumImpactFailure,
    TResult Function(HardFailure value)? hardImpactFailure,
    required TResult orElse(),
  }) {
    if (hardImpactFailure != null) {
      return hardImpactFailure(this);
    }
    return orElse();
  }
}

abstract class HardFailure extends FailureEntity {
  const factory HardFailure({required final String failureMessage}) =
      _$HardFailure;
  const HardFailure._() : super._();

  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$HardFailureCopyWith<_$HardFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
