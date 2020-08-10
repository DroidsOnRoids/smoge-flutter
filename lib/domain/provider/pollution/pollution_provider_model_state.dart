import 'package:smoge/data/serialization/pollution_data.dart';
import 'package:smoge/data/serialization/pollution_quality_index.dart';
import 'package:smoge/data/serialization/pollution_sensor.dart';
import 'package:smoge/data/serialization/pollution_station.dart';
import 'package:smoge/domain/provider/provider_model_async_result.dart';

class PollutionProviderModelState {
  final firstStation = ProviderModelAsyncResult<PollutionStation>();
  final allPollutionStations =
      ProviderModelAsyncResult<List<PollutionStation>>();
  final sensors = ProviderModelAsyncResult<List<PollutionSensor>>();
  final pollutionData = ProviderModelAsyncResult<PollutionData>();
  final pollutionQualityIndex =
      ProviderModelAsyncResult<PollutionQualityIndex>();
}
