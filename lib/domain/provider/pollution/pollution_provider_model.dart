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
    extends ProviderModel<PollutionProviderModelState, Exception> {
  PollutionProviderModel({@required PollutionRepository pollutionRepository})
      : assert(pollutionRepository != null),
        _pollutionRepository = pollutionRepository;

  factory PollutionProviderModel.build() =>
      PollutionProviderModel(pollutionRepository: PollutionRestRepository());

  final PollutionRepository _pollutionRepository;

  Future<void> getFirstStation() async {
    PollutionStation firstStation =
        await _pollutionRepository.getFirstStation();

    final PollutionProviderModelState _value = value ?? PollutionProviderModelState();

    _value.firstStation = firstStation;

    pushNextValue(_value);
  }

  Future<void> getAllStations() async {
    List<PollutionStation> allPollutionStations =
        await _pollutionRepository.getAllStations();

    final PollutionProviderModelState _value = value ?? PollutionProviderModelState();

    _value.allPollutionStations = allPollutionStations;

    pushNextValue(_value);
  }

  Future<void> getSensors(int stationId) async {
    List<PollutionSensor> sensors =
        await _pollutionRepository.getSensors(stationId);

    final PollutionProviderModelState _value = value ?? PollutionProviderModelState();

    _value.sensors = sensors;

    pushNextValue(_value);
  }

  Future<void> getSensorData(int sensorId) async {
    PollutionData pollutionData =
        await _pollutionRepository.getSensorData(sensorId);

    final PollutionProviderModelState _value = value ?? PollutionProviderModelState();

    _value.pollutionData = pollutionData;

    pushNextValue(_value);
  }

  Future<void> getPollutionQualityIndex(int stationId) async {
    PollutionQualityIndex pollutionQualityIndex =
        await _pollutionRepository.getPollutionQualityIndex(stationId);

    final PollutionProviderModelState _value = value ?? PollutionProviderModelState();

    _value.pollutionQualityIndex = pollutionQualityIndex;

    pushNextValue(_value);
  }
}
