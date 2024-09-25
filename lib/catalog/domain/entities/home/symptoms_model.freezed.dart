// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptoms_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SymptomsModel _$SymptomsModelFromJson(Map<String, dynamic> json) {
  return _SymptomsModel.fromJson(json);
}

/// @nodoc
mixin _$SymptomsModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get severity => throw _privateConstructorUsedError;
  int get timesReported => throw _privateConstructorUsedError;
  DateTime get timeReported => throw _privateConstructorUsedError;

  /// Serializes this SymptomsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymptomsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomsModelCopyWith<SymptomsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomsModelCopyWith<$Res> {
  factory $SymptomsModelCopyWith(
          SymptomsModel value, $Res Function(SymptomsModel) then) =
      _$SymptomsModelCopyWithImpl<$Res, SymptomsModel>;
  @useResult
  $Res call(
      {String name,
      String description,
      int severity,
      int timesReported,
      DateTime timeReported});
}

/// @nodoc
class _$SymptomsModelCopyWithImpl<$Res, $Val extends SymptomsModel>
    implements $SymptomsModelCopyWith<$Res> {
  _$SymptomsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? severity = null,
    Object? timesReported = null,
    Object? timeReported = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as int,
      timesReported: null == timesReported
          ? _value.timesReported
          : timesReported // ignore: cast_nullable_to_non_nullable
              as int,
      timeReported: null == timeReported
          ? _value.timeReported
          : timeReported // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymptomsModelImplCopyWith<$Res>
    implements $SymptomsModelCopyWith<$Res> {
  factory _$$SymptomsModelImplCopyWith(
          _$SymptomsModelImpl value, $Res Function(_$SymptomsModelImpl) then) =
      __$$SymptomsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      int severity,
      int timesReported,
      DateTime timeReported});
}

/// @nodoc
class __$$SymptomsModelImplCopyWithImpl<$Res>
    extends _$SymptomsModelCopyWithImpl<$Res, _$SymptomsModelImpl>
    implements _$$SymptomsModelImplCopyWith<$Res> {
  __$$SymptomsModelImplCopyWithImpl(
      _$SymptomsModelImpl _value, $Res Function(_$SymptomsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SymptomsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? severity = null,
    Object? timesReported = null,
    Object? timeReported = null,
  }) {
    return _then(_$SymptomsModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as int,
      timesReported: null == timesReported
          ? _value.timesReported
          : timesReported // ignore: cast_nullable_to_non_nullable
              as int,
      timeReported: null == timeReported
          ? _value.timeReported
          : timeReported // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomsModelImpl implements _SymptomsModel {
  const _$SymptomsModelImpl(
      {required this.name,
      required this.description,
      required this.severity,
      required this.timesReported,
      required this.timeReported});

  factory _$SymptomsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomsModelImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final int severity;
  @override
  final int timesReported;
  @override
  final DateTime timeReported;

  @override
  String toString() {
    return 'SymptomsModel(name: $name, description: $description, severity: $severity, timesReported: $timesReported, timeReported: $timeReported)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomsModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.timesReported, timesReported) ||
                other.timesReported == timesReported) &&
            (identical(other.timeReported, timeReported) ||
                other.timeReported == timeReported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, description, severity, timesReported, timeReported);

  /// Create a copy of SymptomsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomsModelImplCopyWith<_$SymptomsModelImpl> get copyWith =>
      __$$SymptomsModelImplCopyWithImpl<_$SymptomsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomsModelImplToJson(
      this,
    );
  }
}

abstract class _SymptomsModel implements SymptomsModel {
  const factory _SymptomsModel(
      {required final String name,
      required final String description,
      required final int severity,
      required final int timesReported,
      required final DateTime timeReported}) = _$SymptomsModelImpl;

  factory _SymptomsModel.fromJson(Map<String, dynamic> json) =
      _$SymptomsModelImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  int get severity;
  @override
  int get timesReported;
  @override
  DateTime get timeReported;

  /// Create a copy of SymptomsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomsModelImplCopyWith<_$SymptomsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
