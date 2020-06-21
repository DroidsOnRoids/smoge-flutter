import 'package:json_annotation/json_annotation.dart';

part 'pollution_value.g.dart';

@JsonSerializable()
class PollutionValue {
  @JsonKey(name: 'date')
  final DateTime date;

  @JsonKey(name: 'value')
  final double value;

  PollutionValue(this.date, this.value);

  factory PollutionValue.fromJson(Map<String, dynamic> json) => _$PollutionValueFromJson(json);

  @override
  String toString() {
    return 'date: $date\n'
        'value: $value\n';
  }
}
