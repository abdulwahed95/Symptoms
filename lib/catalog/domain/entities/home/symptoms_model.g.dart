// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptoms_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SymptomsModelImpl _$$SymptomsModelImplFromJson(Map<String, dynamic> json) =>
    _$SymptomsModelImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      severity: (json['severity'] as num).toInt(),
      timesReported: (json['timesReported'] as num).toInt(),
      timeReported: DateTime.parse(json['timeReported'] as String),
    );

Map<String, dynamic> _$$SymptomsModelImplToJson(_$SymptomsModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'severity': instance.severity,
      'timesReported': instance.timesReported,
      'timeReported': instance.timeReported.toIso8601String(),
    };
