import 'package:smoge/data/serialization/pollution_data.dart';
import 'package:smoge/data/serialization/pollution_quality_index.dart';
import 'package:smoge/data/serialization/pollution_sensor.dart';
import 'package:smoge/data/serialization/pollution_station.dart';
import 'package:smoge/domain/error/smoge_error.dart';
import 'package:smoge/domain/provider/provider_model_async_result.dart';

class PollutionProviderModelState {
  final firstStation = ProviderModelAsyncResult<PollutionStation, SmogeError>();
  final allPollutionStations =
      ProviderModelAsyncResult<List<PollutionStation>, SmogeError>();
  final sensors = ProviderModelAsyncResult<List<PollutionSensor>, SmogeError>();
  final pollutionData = ProviderModelAsyncResult<PollutionData, SmogeError>();
  final pollutionQualityIndex =
      ProviderModelAsyncResult<PollutionQualityIndex, SmogeError>();
}
