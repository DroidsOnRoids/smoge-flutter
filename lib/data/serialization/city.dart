import 'package:json_annotation/json_annotation.dart';
import 'package:smoge/data/serialization/commune.dart';

part 'city.g.dart';

@JsonSerializable()
class City {
  @JsonKey(name: 'id')
  final int stationId;

  @JsonKey(name: 'stationName')
  final String stationName;

  @JsonKey(name: 'commune')
  final Commune commune;

  City(this.stationId, this.stationName, this.commune);

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  @override
  String toString() {
    return 'stationId: $stationId\n'
        'stationName: $stationName\n'
        'commune: $commune\n';
  }
}
