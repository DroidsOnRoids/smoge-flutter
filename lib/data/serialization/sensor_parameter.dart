import 'package:json_annotation/json_annotation.dart';

part 'sensor_parameter.g.dart';

@JsonSerializable()
class SensorParameter {
  @JsonKey(name: 'paramName')
  final String parameterName;

  @JsonKey(name: 'paramFormula')
  final String parameterFormula;

  @JsonKey(name: 'paramCode')
  final String parameterCode;

  @JsonKey(name: 'idParam')
  final int parameterId;

  SensorParameter(this.parameterName, this.parameterFormula, this.parameterCode, this.parameterId);

  factory SensorParameter.fromJson(Map<String, dynamic> json) => _$SensorParameterFromJson(json);

  @override
  String toString() {
    return 'parameterName: $parameterName\n'
        'parameterFormula: $parameterFormula\n'
        'parameterCode: $parameterCode\n'
        'parameterId: $parameterId\n';
  }
}
