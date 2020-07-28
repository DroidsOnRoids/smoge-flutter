import 'package:async/async.dart';
import 'package:flutter/cupertino.dart';
import 'package:smoge/data/api/pollution_rest_repository.dart';
import 'package:smoge/data/serialization/pollution_data.dart';
import 'package:smoge/data/serialization/pollution_quality_index.dart';
import 'package:smoge/data/serialization/pollution_sensor.dart';
import 'package:smoge/data/serialization/pollution_station.dart';
import 'package:smoge/domain/provider/pollution/pollution_provider_model_state.dart';
import 'package:smoge/domain/provider/provider_model.dart';
import 'package:smoge/domain/repository/pollution_repository.dart';

class PollutionProviderModel
    extends ProviderModel<PollutionProviderModelState> {
  PollutionProviderModel({@required PollutionRepository pollutionRepository})
      : assert(pollutionRepository != null),
        _pollutionRepository = pollutionRepository,
        super(PollutionProviderModelState());

  factory PollutionProviderModel.build() =>
      PollutionProviderModel(pollutionRepository: PollutionRestRepository());

  final PollutionRepository _pollutionRepository;

  Future<void> getFirstStation() async {
    PollutionStation firstStation =
        await _pollutionRepository.getFirstStation();

    value.firstStation.set(
        Future<Result<PollutionStation>>.value(
            Result<PollutionStation>.value(firstStation)),
        notifyListeners);
  }

  Future<void> getAllStations() async {
    List<PollutionStation> allPollutionStations =
        await _pollutionRepository.getAllStations();

    value.allPollutionStations.set(
        Future<Result<List<PollutionStation>>>.value(
            Result<List<PollutionStation>>.value(allPollutionStations)),
        notifyListeners);
  }

  Future<void> getSensors(int stationId) async {
    List<PollutionSensor> sensors =
        await _pollutionRepository.getSensors(stationId);

    value.sensors.set(
        Future<Result<List<PollutionSensor>>>.value(
            Result<List<PollutionSensor>>.value(sensors)),
        notifyListeners);
  }

  Future<void> getSensorData(int sensorId) async {
    PollutionData pollutionData =
        await _pollutionRepository.getSensorData(sensorId);

    value.pollutionData.set(
        Future<Result<PollutionData>>.value(
            Result<PollutionData>.value(pollutionData)),
        notifyListeners);
  }

  Future<void> getPollutionQualityIndex(int stationId) async {
    PollutionQualityIndex pollutionQualityIndex =
        await _pollutionRepository.getPollutionQualityIndex(stationId);

    value.pollutionQualityIndex.set(
        Future<Result<PollutionQualityIndex>>.value(
            Result<PollutionQualityIndex>.value(pollutionQualityIndex)),
        notifyListeners);
  }
}
