import 'package:smoge/data/serialization/pollution_data.dart';
import 'package:smoge/data/serialization/pollution_quality_index.dart';
import 'package:smoge/data/serialization/pollution_sensor.dart';
import 'package:smoge/data/serialization/pollution_station.dart';
import 'package:smoge/domain/provider/provider_model_async_result.dart';

class PollutionProviderModelState {
  ProviderModelAsyncResult<PollutionStation, Exception> firstStation =
      ProviderModelAsyncResult<PollutionStation, Exception>();
  ProviderModelAsyncResult<List<PollutionStation>, Exception>
      allPollutionStations =
      ProviderModelAsyncResult<List<PollutionStation>, Exception>();
  ProviderModelAsyncResult<List<PollutionSensor>, Exception> sensors =
      ProviderModelAsyncResult<List<PollutionSensor>, Exception>();
  ProviderModelAsyncResult<PollutionData, Exception> pollutionData =
      ProviderModelAsyncResult<PollutionData, Exception>();
  ProviderModelAsyncResult<PollutionQualityIndex, Exception>
      pollutionQualityIndex =
      ProviderModelAsyncResult<PollutionQualityIndex, Exception>();
}
