import 'package:async/async.dart';
import 'package:smoge/data/api/http_client.dart';
import 'package:smoge/data/serialization/pollution_data.dart';
import 'package:smoge/data/serialization/pollution_quality_index.dart';
import 'package:smoge/data/serialization/pollution_sensor.dart';
import 'package:smoge/data/serialization/pollution_station.dart';
import 'package:smoge/domain/error/smoge_error.dart';
import 'package:smoge/domain/repository/pollution_repository.dart';

class _Urls {
  static const baseUrl = 'https://api.gios.gov.pl/pjp-api/rest/';
  static const allStations = '${baseUrl}station/findAll';
  static const stationSensors = '${baseUrl}station/sensors/';
  static const sensorData = '${baseUrl}data/getData/';
  static const stationPollutionQualityIndex = '${baseUrl}aqindex/getIndex/';
}

class PollutionRestRepository implements PollutionRepository {
  final HttpClient _httpClient = HttpClient();

  @override
  Future<Result<PollutionStation>> getFirstStation() async {
    final stationListJson = await _httpClient.getRequest(_Urls.allStations);

    if (stationListJson.isValue) {
      return Result.value(PollutionStation.fromJson(
          stationListJson.asValue.value.first as Map<String, dynamic>));
    } else {
      return Result.error(PollutionDataDownloadError());
    }
  }

  @override
  Future<Result<List<PollutionStation>>> getAllStations() async {
    final stationListJson = await _httpClient.getRequest(_Urls.allStations);

    if (stationListJson.isValue) {
      return Result.value((stationListJson.asValue.value as List)
          .map((stationJson) =>
              PollutionStation.fromJson(stationJson as Map<String, dynamic>))
          .toList());
    } else {
      return Result.error(PollutionDataDownloadError());
    }
  }

  @override
  Future<Result<List<PollutionSensor>>> getSensors(int stationId) async {
    final sensorListJson =
        await _httpClient.getRequest('${_Urls.stationSensors}$stationId');

    if (sensorListJson.isValue) {
      return Result.value((sensorListJson.asValue.value as List)
          .map((stationJson) =>
              PollutionSensor.fromJson(stationJson as Map<String, dynamic>))
          .toList());
    } else {
      return Result.error(PollutionDataDownloadError());
    }
  }

  @override
  Future<Result<PollutionData>> getSensorData(int sensorId) async {
    final sensorDataJson =
        await _httpClient.getRequest('${_Urls.sensorData}$sensorId');

    if (sensorDataJson.isValue) {
      return Result.value(PollutionData.fromJson(
          sensorDataJson.asValue.value as Map<String, dynamic>));
    } else {
      return Result.error(PollutionDataDownloadError());
    }
  }

  @override
  Future<Result<PollutionQualityIndex>> getPollutionQualityIndex(
      int stationId) async {
    final pollutionQualityIndexJson = await _httpClient
        .getRequest('${_Urls.stationPollutionQualityIndex}$stationId');

    if (pollutionQualityIndexJson.isValue) {
      return Result.value(PollutionQualityIndex.fromJson(
          pollutionQualityIndexJson.asValue.value as Map<String, dynamic>));
    } else {
      return Result.error(PollutionDataDownloadError());
    }
  }
}
