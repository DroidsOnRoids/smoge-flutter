// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pollution_quality_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PollutionQualityIndex _$PollutionQualityIndexFromJson(
    Map<String, dynamic> json) {
  return PollutionQualityIndex(
    json['id'] as int,
    json['stCalcDate'] == null
        ? null
        : DateTime.parse(json['stCalcDate'] as String),
    json['stIndexLevel'] == null
        ? null
        : IndexLevel.fromJson(json['stIndexLevel'] as Map<String, dynamic>),
    json['stSourceDataDate'] == null
        ? null
        : DateTime.parse(json['stSourceDataDate'] as String),
    json['so2CalcDate'] == null
        ? null
        : DateTime.parse(json['so2CalcDate'] as String),
    json['so2SourceDataDate'] == null
        ? null
        : DateTime.parse(json['so2SourceDataDate'] as String),
    json['so2IndexLevel'] == null
        ? null
        : IndexLevel.fromJson(json['so2IndexLevel'] as Map<String, dynamic>),
    json['no2CalcDate'] as int,
    json['no2SourceDataDate'] == null
        ? null
        : DateTime.parse(json['no2SourceDataDate'] as String),
    json['no2IndexLevel'] == null
        ? null
        : IndexLevel.fromJson(json['no2IndexLevel'] as Map<String, dynamic>),
    json['coCalcDate'] == null
        ? null
        : DateTime.parse(json['coCalcDate'] as String),
    json['coSourceDataDate'] == null
        ? null
        : DateTime.parse(json['coSourceDataDate'] as String),
    json['coIndexLevel'] == null
        ? null
        : IndexLevel.fromJson(json['coIndexLevel'] as Map<String, dynamic>),
    json['pm10CalcDate'] == null
        ? null
        : DateTime.parse(json['pm10CalcDate'] as String),
    json['pm10SourceDataDate'] == null
        ? null
        : DateTime.parse(json['pm10SourceDataDate'] as String),
    json['pm10IndexLevel'] == null
        ? null
        : IndexLevel.fromJson(json['pm10IndexLevel'] as Map<String, dynamic>),
    json['pm25CalcDate'] == null
        ? null
        : DateTime.parse(json['pm25CalcDate'] as String),
    json['pm25SourceDataDate'] == null
        ? null
        : DateTime.parse(json['pm25SourceDataDate'] as String),
    json['pm25IndexLevel'] == null
        ? null
        : IndexLevel.fromJson(json['pm25IndexLevel'] as Map<String, dynamic>),
    json['o3CalcDate'] == null
        ? null
        : DateTime.parse(json['o3CalcDate'] as String),
    json['o3SourceDataDate'] == null
        ? null
        : DateTime.parse(json['o3SourceDataDate'] as String),
    json['o3IndexLevel'] == null
        ? null
        : IndexLevel.fromJson(json['o3IndexLevel'] as Map<String, dynamic>),
    json['c6h6CalcDate'] == null
        ? null
        : DateTime.parse(json['c6h6CalcDate'] as String),
    json['c6h6SourceDataDate'] == null
        ? null
        : DateTime.parse(json['c6h6SourceDataDate'] as String),
    json['c6h6IndexLevel'] == null
        ? null
        : IndexLevel.fromJson(json['c6h6IndexLevel'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PollutionQualityIndexToJson(
        PollutionQualityIndex instance) =>
    <String, dynamic>{
      'id': instance.stationId,
      'stCalcDate': instance.stationCalculateDate?.toIso8601String(),
      'stIndexLevel': instance.stationIndexLevel,
      'stSourceDataDate': instance.stationSourceDataDate?.toIso8601String(),
      'so2CalcDate': instance.so2CalcDate?.toIso8601String(),
      'so2SourceDataDate': instance.so2SourceDataDate?.toIso8601String(),
      'so2IndexLevel': instance.so2IndexLevel,
      'no2CalcDate': instance.no2CalcDate,
      'no2SourceDataDate': instance.no2SourceDataDate?.toIso8601String(),
      'no2IndexLevel': instance.no2IndexLevel,
      'coCalcDate': instance.coCalcDate?.toIso8601String(),
      'coSourceDataDate': instance.coSourceDataDate?.toIso8601String(),
      'coIndexLevel': instance.coIndexLevel,
      'pm10CalcDate': instance.pm10CalcDate?.toIso8601String(),
      'pm10SourceDataDate': instance.pm10SourceDataDate?.toIso8601String(),
      'pm10IndexLevel': instance.pm10IndexLevel,
      'pm25CalcDate': instance.pm25CalcDate?.toIso8601String(),
      'pm25SourceDataDate': instance.pm25SourceDataDate?.toIso8601String(),
      'pm25IndexLevel': instance.pm25IndexLevel,
      'o3CalcDate': instance.o3CalcDate?.toIso8601String(),
      'o3SourceDataDate': instance.o3SourceDataDate?.toIso8601String(),
      'o3IndexLevel': instance.o3IndexLevel,
      'c6h6CalcDate': instance.c6h6CalcDate?.toIso8601String(),
      'c6h6SourceDataDate': instance.c6h6SourceDataDate?.toIso8601String(),
      'c6h6IndexLevel': instance.c6h6IndexLevel,
    };
