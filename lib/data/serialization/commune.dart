import 'package:json_annotation/json_annotation.dart';

part 'commune.g.dart';

@JsonSerializable()
class Commune {
  @JsonKey(name: 'communeName')
  final String communeName;

  @JsonKey(name: 'districtName')
  final String districtName;

  @JsonKey(name: 'provinceName')
  final String provinceName;

  Commune(this.communeName, this.districtName, this.provinceName);

  factory Commune.fromJson(Map<String, dynamic> json) => _$CommuneFromJson(json);

  @override
  String toString() {
    return 'communeName: $communeName\n'
        'districtName: $districtName\n'
        'provinceName: $provinceName\n';
  }
}
