// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndexLevel _$IndexLevelFromJson(Map<String, dynamic> json) {
  return IndexLevel(
    json['id'] as int,
    json['indexLevelName'] as String,
  );
}

Map<String, dynamic> _$IndexLevelToJson(IndexLevel instance) =>
    <String, dynamic>{
      'id': instance.indexId,
      'indexLevelName': instance.indexLevelName,
    };
