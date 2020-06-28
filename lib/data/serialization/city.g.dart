// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) {
  return City(
    json['id'] as int,
    json['stationName'] as String,
    json['commune'] == null
        ? null
        : Commune.fromJson(json['commune'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.stationId,
      'stationName': instance.stationName,
      'commune': instance.commune,
    };
