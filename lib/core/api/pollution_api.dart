import 'package:smoge/core/api/model/pollution_data.dart';
import 'package:smoge/core/api/model/pollution_quality_index.dart';
import 'package:smoge/core/api/model/pollution_sensor.dart';
import 'package:smoge/core/api/model/pollution_station.dart';
import 'package:async/async.dart';

import 'request_factory.dart';

class PollutionAPI {
  final RequestFactory _requestFactory = RequestFactory("http://api.gios.gov.pl/pjp-api/rest/");

  Future<List<PollutionStation>> getAllStations() async {
    final Result<List<dynamic>> result = await _requestFactory.getRequest("station/findAll");

    return result.asValue.value.map((json) => PollutionStation.fromJson(json)).toList();
  }

  Future<List<PollutionSensor>> getSensors(int stationId) async {
    final Result<List<dynamic>> result = await _requestFactory.getRequest("station/sensors/$stationId");

    return result.asValue.value.map((json) => PollutionSensor.fromJson(json)).toList();
  }

  Future<PollutionData> getSensorData(int sensorId) async {
    final Result<Map<String, dynamic>> result = await _requestFactory.getRequest("data/getData/$sensorId");

    return PollutionData.fromJson(result.asValue.value);
  }

  Future<PollutionQualityIndex> getPollutionQualityIndex(int stationId) async {
    final Result<Map<String, dynamic>> result = await _requestFactory.getRequest("aqindex/getIndex/$stationId");

    return PollutionQualityIndex.fromJson(result.asValue.value);
  }
}
