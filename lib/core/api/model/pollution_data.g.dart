// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pollution_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PollutionData _$PollutionDataFromJson(Map<String, dynamic> json) {
  return PollutionData(
    json['key'] as String,
    (json['values'] as List)
        ?.map((e) => e == null
            ? null
            : PollutionValue.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PollutionDataToJson(PollutionData instance) =>
    <String, dynamic>{
      'key': instance.parameterFormula,
      'values': instance.pollutionValues,
    };
