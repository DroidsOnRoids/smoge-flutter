import 'package:json_annotation/json_annotation.dart';
import 'package:smoge/data/serialization/sensor_parameter.dart';

part 'pollution_sensor.g.dart';

@JsonSerializable()
class PollutionSensor {
  @JsonKey(name: 'id')
  final int sensorId;

  @JsonKey(name: 'stationId')
  final int stationId;

  @JsonKey(name: 'param')
  final SensorParameter sensorParameter;

  PollutionSensor(this.sensorId, this.stationId, this.sensorParameter);

  factory PollutionSensor.fromJson(Map<String, dynamic> json) => _$PollutionSensorFromJson(json);

  @override
  String toString() {
    return 'sensorId: $sensorId\n'
        'stationId: $stationId\n'
        'sensorParameter: $sensorParameter\n';
  }
}
