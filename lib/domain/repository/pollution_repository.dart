import 'package:async/async.dart';
import 'package:smoge/data/serialization/pollution_data.dart';
import 'package:smoge/data/serialization/pollution_quality_index.dart';
import 'package:smoge/data/serialization/pollution_sensor.dart';
import 'package:smoge/data/serialization/pollution_station.dart';

abstract class PollutionRepository {
  Future<Result<PollutionStation>> getFirstStation();

  Future<Result<List<PollutionStation>>> getAllStations();

  Future<Result<List<PollutionSensor>>> getSensors(int stationId);

  Future<Result<PollutionData>> getSensorData(int sensorId);

  Future<Result<PollutionQualityIndex>> getPollutionQualityIndex(int stationId);
}
