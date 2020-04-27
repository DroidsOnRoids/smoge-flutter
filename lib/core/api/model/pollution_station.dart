import 'package:json_annotation/json_annotation.dart';

part 'pollution_station.g.dart';

@JsonSerializable()
class PollutionStation {
  @JsonKey(name: 'id')
  final int stationId;

  @JsonKey(name: 'stationName')
  final String stationName;

  PollutionStation(this.stationId, this.stationName);

  factory PollutionStation.fromJson(Map<String, dynamic> json) => _$PollutionStationFromJson(json);

  @override
  String toString() {
    return 'stationId: $stationId\n'
        'stationName: $stationName\n';
  }
}
