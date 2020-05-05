import 'package:json_annotation/json_annotation.dart';
import 'package:smoge/core/api/model/pollution_value.dart';

part 'pollution_data.g.dart';

@JsonSerializable()
class PollutionData {
  @JsonKey(name: 'key')
  final String parameterFormula;

  @JsonKey(name: 'values')
  final List<PollutionValue> pollutionValues;

  PollutionData(this.parameterFormula, this.pollutionValues);

  factory PollutionData.fromJson(Map<String, dynamic> json) => _$PollutionDataFromJson(json);

  @override
  String toString() {
    return 'parameterFormula: $parameterFormula\n'
        'pollutionValues: $pollutionValues\n';
  }
}
