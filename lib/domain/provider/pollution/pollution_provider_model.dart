import 'package:flutter/cupertino.dart';
import 'package:smoge/data/api/pollution_rest_repository.dart';
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
    final firstStation = _pollutionRepository.getFirstStation();

    await value.firstStation.set(firstStation, notifyListeners);
  }

  Future<void> getAllStations() async {
    final allPollutionStations = _pollutionRepository.getAllStations();

    await value.allPollutionStations.set(allPollutionStations, notifyListeners);
  }

  Future<void> getSensors(int stationId) async {
    final sensors = _pollutionRepository.getSensors(stationId);

    await value.sensors.set(sensors, notifyListeners);
  }

  Future<void> getSensorData(int sensorId) async {
    final pollutionData = _pollutionRepository.getSensorData(sensorId);

    await value.pollutionData.set(pollutionData, notifyListeners);
  }

  Future<void> getPollutionQualityIndex(int stationId) async {
    final pollutionQualityIndex =
        _pollutionRepository.getPollutionQualityIndex(stationId);

    await value.pollutionQualityIndex
        .set(pollutionQualityIndex, notifyListeners);
  }
}
