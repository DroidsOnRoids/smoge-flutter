import 'package:json_annotation/json_annotation.dart';
import 'city.dart';

part 'pollution_station.g.dart';

@JsonSerializable()
class PollutionStation {
  @JsonKey(name: 'id')
  final int stationId;

  @JsonKey(name: 'stationName')
  final String stationName;

  @JsonKey(name: 'gegrLat')
  final String latitude;

  @JsonKey(name: 'gegrLon')
  final String longitude;

  @JsonKey(name: 'city')
  final City city;

  @JsonKey(name: 'addressStreet')
  final String addressStreet;

  PollutionStation(this.stationId, this.stationName, this.latitude, this.longitude, this.city, this.addressStreet);

  factory PollutionStation.fromJson(Map<String, dynamic> json) => _$PollutionStationFromJson(json);

  Map<String, dynamic> toJson(PollutionStation station) => _$PollutionStationToJson(station);

  @override
  String toString() {
    return 'stationId: $stationId\n'
        'stationName: $stationName\n'
        'latitude: $latitude\n'
        'longitude: $longitude\n'
        'city: $city\n'
        'addressStreet: $addressStreet\n';
  }
}
