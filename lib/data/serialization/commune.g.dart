// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commune.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Commune _$CommuneFromJson(Map<String, dynamic> json) {
  return Commune(
    json['communeName'] as String,
    json['districtName'] as String,
    json['provinceName'] as String,
  );
}

Map<String, dynamic> _$CommuneToJson(Commune instance) => <String, dynamic>{
      'communeName': instance.communeName,
      'districtName': instance.districtName,
      'provinceName': instance.provinceName,
    };
