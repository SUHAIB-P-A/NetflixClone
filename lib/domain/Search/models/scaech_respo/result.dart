import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable()
class ScarchResultData {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  ScarchResultData({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory ScarchResultData.fromJson(Map<String, dynamic> json) {
    return _$ScarchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ScarchResultDataToJson(this);
}
