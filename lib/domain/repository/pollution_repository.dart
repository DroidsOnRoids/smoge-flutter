import 'package:smoge/data/serialization/pollution_data.dart';
import 'package:smoge/data/serialization/pollution_quality_index.dart';
import 'package:smoge/data/serialization/pollution_sensor.dart';
import 'package:smoge/data/serialization/pollution_station.dart';

abstract class PollutionRepository {
  Future<PollutionStation> getFirstStation();

  Future<List<PollutionStation>> getAllStations();

  Future<List<PollutionSensor>> getSensors(int stationId);

  Future<PollutionData> getSensorData(int sensorId);

  Future<PollutionQualityIndex> getPollutionQualityIndex(int stationId);
}
