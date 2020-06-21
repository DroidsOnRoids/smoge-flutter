import 'package:json_annotation/json_annotation.dart';

part 'index_level.g.dart';

@JsonSerializable()
class IndexLevel {
  @JsonKey(name: 'id')
  final int indexId;

  @JsonKey(name: 'indexLevelName')
  final String indexLevelName;

  IndexLevel(this.indexId, this.indexLevelName);

  factory IndexLevel.fromJson(Map<String, dynamic> json) => _$IndexLevelFromJson(json);

  @override
  String toString() {
    return 'indexId: $indexId\n'
        'indexLevelName: $indexLevelName\n';
  }
}
