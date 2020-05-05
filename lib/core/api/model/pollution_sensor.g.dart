// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pollution_sensor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PollutionSensor _$PollutionSensorFromJson(Map<String, dynamic> json) {
  return PollutionSensor(
    json['id'] as int,
    json['stationId'] as int,
    json['param'] == null
        ? null
        : SensorParameter.fromJson(json['param'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PollutionSensorToJson(PollutionSensor instance) =>
    <String, dynamic>{
      'id': instance.sensorId,
      'stationId': instance.stationId,
      'param': instance.sensorParameter,
    };
