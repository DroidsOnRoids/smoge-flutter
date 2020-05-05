import 'package:json_annotation/json_annotation.dart';
import 'package:smoge/core/api/model/index_level.dart';

part 'pollution_quality_index.g.dart';

@JsonSerializable()
class PollutionQualityIndex {
  @JsonKey(name: 'id')
  final int stationId;

  @JsonKey(name: 'stCalcDate')
  final DateTime stationCalculateDate;

  @JsonKey(name: 'stIndexLevel')
  final IndexLevel stationIndexLevel;

  @JsonKey(name: 'stSourceDataDate')
  final DateTime stationSourceDataDate;

  //sulphur dioxide
  @JsonKey(name: 'so2CalcDate')
  final DateTime so2CalcDate;
  @JsonKey(name: 'so2SourceDataDate')
  final DateTime so2SourceDataDate;
  @JsonKey(name: 'so2IndexLevel')
  final IndexLevel so2IndexLevel;

  //nitrogen dioxide
  @JsonKey(name: 'no2CalcDate')
  final int no2CalcDate;
  @JsonKey(name: 'no2SourceDataDate')
  final DateTime no2SourceDataDate;
  @JsonKey(name: 'no2IndexLevel')
  final IndexLevel no2IndexLevel;

  //cobalt
  @JsonKey(name: 'coCalcDate')
  final DateTime coCalcDate;
  @JsonKey(name: 'coSourceDataDate')
  final DateTime coSourceDataDate;
  @JsonKey(name: 'coIndexLevel')
  final IndexLevel coIndexLevel;

  //10 micrometer atmospheric particulate matter
  @JsonKey(name: 'pm10CalcDate')
  final DateTime pm10CalcDate;
  @JsonKey(name: 'pm10SourceDataDate')
  final DateTime pm10SourceDataDate;
  @JsonKey(name: 'pm10IndexLevel')
  final IndexLevel pm10IndexLevel;

  //2,5 micrometer atmospheric particulate matter
  @JsonKey(name: 'pm25CalcDate')
  final DateTime pm25CalcDate;
  @JsonKey(name: 'pm25SourceDataDate')
  final DateTime pm25SourceDataDate;
  @JsonKey(name: 'pm25IndexLevel')
  final IndexLevel pm25IndexLevel;

  //ozone
  @JsonKey(name: 'o3CalcDate')
  final DateTime o3CalcDate;
  @JsonKey(name: 'o3SourceDataDate')
  final DateTime o3SourceDataDate;
  @JsonKey(name: 'o3IndexLevel')
  final IndexLevel o3IndexLevel;

  //benzene
  @JsonKey(name: 'c6h6CalcDate')
  final DateTime c6h6CalcDate;
  @JsonKey(name: 'c6h6SourceDataDate')
  final DateTime c6h6SourceDataDate;
  @JsonKey(name: 'c6h6IndexLevel')
  final IndexLevel c6h6IndexLevel;

  PollutionQualityIndex(
      this.stationId,
      this.stationCalculateDate,
      this.stationIndexLevel,
      this.stationSourceDataDate,
      this.so2CalcDate,
      this.so2SourceDataDate,
      this.so2IndexLevel,
      this.no2CalcDate,
      this.no2SourceDataDate,
      this.no2IndexLevel,
      this.coCalcDate,
      this.coSourceDataDate,
      this.coIndexLevel,
      this.pm10CalcDate,
      this.pm10SourceDataDate,
      this.pm10IndexLevel,
      this.pm25CalcDate,
      this.pm25SourceDataDate,
      this.pm25IndexLevel,
      this.o3CalcDate,
      this.o3SourceDataDate,
      this.o3IndexLevel,
      this.c6h6CalcDate,
      this.c6h6SourceDataDate,
      this.c6h6IndexLevel);

  factory PollutionQualityIndex.fromJson(Map<String, dynamic> json) => _$PollutionQualityIndexFromJson(json);

  @override
  String toString() {
    return 'stationId: $stationId\n'
        'stationCalculateDate: $stationCalculateDate\n'
        'stationIndexLevel: $stationIndexLevel\n'
        'stationSourceDataDate: $stationSourceDataDate\n'
        'so2CalcDate: $so2CalcDate\n'
        'so2SourceDataDate: $so2SourceDataDate\n'
        'so2IndexLevel: $so2IndexLevel\n'
        'no2CalcDate: $no2CalcDate\n'
        'no2SourceDataDate: $no2SourceDataDate\n'
        'no2IndexLevel: $no2IndexLevel\n'
        'coCalcDate: $coCalcDate\n'
        'coSourceDataDate: $coSourceDataDate\n'
        'coIndexLevel: $coIndexLevel\n'
        'pm10CalcDate: $pm10CalcDate\n'
        'pm10SourceDataDate: $pm10SourceDataDate\n'
        'pm10IndexLevel: $pm10IndexLevel\n'
        'pm25CalcDate: $pm25CalcDate\n'
        'pm25SourceDataDate: $pm25SourceDataDate\n'
        'pm25IndexLevel: $pm25IndexLevel\n'
        'o3CalcDate: $o3CalcDate\n'
        'o3SourceDataDate: $o3SourceDataDate\n'
        'o3IndexLevel: $o3IndexLevel\n'
        'c6h6CalcDate: $c6h6CalcDate\n'
        'c6h6SourceDataDate: $c6h6SourceDataDate\n'
        'c6h6IndexLevel: $c6h6IndexLevel\n';
  }
}
