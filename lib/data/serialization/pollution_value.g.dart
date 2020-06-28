// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pollution_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PollutionValue _$PollutionValueFromJson(Map<String, dynamic> json) {
  return PollutionValue(
    json['date'] == null ? null : DateTime.parse(json['date'] as String),
    (json['value'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$PollutionValueToJson(PollutionValue instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'value': instance.value,
    };
