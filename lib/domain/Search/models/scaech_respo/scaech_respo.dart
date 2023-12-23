import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'scaech_respo.g.dart';

@JsonSerializable()
class ScaechRespo {
  @JsonKey(name: "results")
  List<ScarchResultData> results;

  ScaechRespo({
    this.results = const [],
  });

  factory ScaechRespo.fromJson(Map<String, dynamic> json) {
    return _$ScaechRespoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ScaechRespoToJson(this);
}
