import 'package:smoge/data/api/api_exception.dart';
import 'package:smoge/data/api/http_client.dart';
import 'package:smoge/data/serialization/pollution_data.dart';
import 'package:smoge/data/serialization/pollution_quality_index.dart';
import 'package:smoge/data/serialization/pollution_sensor.dart';
import 'package:smoge/data/serialization/pollution_station.dart';
import 'package:smoge/domain/repository/pollution_repository.dart';

class _Urls {
  static const baseUrl = "https://api.gios.gov.pl/pjp-api/rest/";
  static const allStations = "${baseUrl}station/findAll";
  static const stationSensors = "${baseUrl}station/sensors/";
  static const sensorData = "${baseUrl}data/getData/";
  static const stationPollutionQualityIndex = "${baseUrl}aqindex/getIndex/";
}

class PollutionRestRepository implements PollutionRepository {
  final HttpClient _httpClient = HttpClient();

  @override
  Future<PollutionStation> getFirstStation() async {
    final List<dynamic> stationListJson = await _httpClient.getRequest(_Urls.allStations);

    if (stationListJson.isEmpty) {
      throw EmptyResultException();
    }

    return PollutionStation.fromJson(stationListJson.first);
  }

  @override
  Future<List<PollutionStation>> getAllStations() async {
    final List<dynamic> stationListJson = await _httpClient.getRequest(_Urls.allStations);

    return stationListJson.map((stationJson) => PollutionStation.fromJson(stationJson)).toList();
  }

  @override
  Future<List<PollutionSensor>> getSensors(int stationId) async {
    final List<dynamic> sensorListJson =
        await _httpClient.getRequest("${_Urls.stationSensors}$stationId");

    return sensorListJson.map((stationJson) => PollutionSensor.fromJson(stationJson)).toList();
  }

  @override
  Future<PollutionData> getSensorData(int sensorId) async {
    final Map<String, dynamic> sensorDataJson =
        await _httpClient.getRequest("${_Urls.sensorData}$sensorId");

    return PollutionData.fromJson(sensorDataJson);
  }

  @override
  Future<PollutionQualityIndex> getPollutionQualityIndex(int stationId) async {
    final Map<String, dynamic> pollutionQualityIndexJson =
        await _httpClient.getRequest("${_Urls.stationPollutionQualityIndex}$stationId");

    return PollutionQualityIndex.fromJson(pollutionQualityIndexJson);
  }
}
