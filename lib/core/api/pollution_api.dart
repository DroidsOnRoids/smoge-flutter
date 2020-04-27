import 'package:smoge/core/api/model/pollution_sensor.dart';
import 'package:smoge/core/api/model/pollution_station.dart';
import 'package:async/async.dart';

import 'api.dart';

class PollutionAPI extends API {
  Future<List<PollutionStation>> getAllStations() async {
    final Result<List<dynamic>> result = await getRequest("station/findAll");

    return result.asValue.value.map((json) => PollutionStation.fromJson(json)).toList();
  }

  Future<List<PollutionSensor>> getSensor(int stationId) async {
    final Result<List<dynamic>> result = await getRequest("station/sensors/$stationId");

    return result.asValue.value.map((json) => PollutionSensor.fromJson(json)).toList();
  }
}
