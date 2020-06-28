// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pollution_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PollutionStation _$PollutionStationFromJson(Map<String, dynamic> json) {
  return PollutionStation(
    json['id'] as int,
    json['stationName'] as String,
    json['gegrLat'] as String,
    json['gegrLon'] as String,
    json['city'] == null
        ? null
        : City.fromJson(json['city'] as Map<String, dynamic>),
    json['addressStreet'] as String,
  );
}

Map<String, dynamic> _$PollutionStationToJson(PollutionStation instance) =>
    <String, dynamic>{
      'id': instance.stationId,
      'stationName': instance.stationName,
      'gegrLat': instance.latitude,
      'gegrLon': instance.longitude,
      'city': instance.city,
      'addressStreet': instance.addressStreet,
    };
