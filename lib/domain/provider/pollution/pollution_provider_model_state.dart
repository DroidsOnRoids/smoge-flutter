import 'package:smoge/data/serialization/pollution_data.dart';
import 'package:smoge/data/serialization/pollution_quality_index.dart';
import 'package:smoge/data/serialization/pollution_sensor.dart';
import 'package:smoge/data/serialization/pollution_station.dart';

class PollutionProviderModelState {
  PollutionStation firstStation;
  List<PollutionStation> allPollutionStations;
  List<PollutionSensor> sensors;
  PollutionData pollutionData;
  PollutionQualityIndex pollutionQualityIndex;
}
