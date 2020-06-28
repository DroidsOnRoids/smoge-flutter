// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SensorParameter _$SensorParameterFromJson(Map<String, dynamic> json) {
  return SensorParameter(
    json['paramName'] as String,
    json['paramFormula'] as String,
    json['paramCode'] as String,
    json['idParam'] as int,
  );
}

Map<String, dynamic> _$SensorParameterToJson(SensorParameter instance) =>
    <String, dynamic>{
      'paramName': instance.parameterName,
      'paramFormula': instance.parameterFormula,
      'paramCode': instance.parameterCode,
      'idParam': instance.parameterId,
    };
