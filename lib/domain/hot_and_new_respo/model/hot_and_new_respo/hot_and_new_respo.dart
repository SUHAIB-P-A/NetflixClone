import 'package:json_annotation/json_annotation.dart';

part 'hot_and_new_respo.g.dart';

@JsonSerializable()
class HotAndNewRespo {
  @JsonKey(name: '1')
  int? page;

  @JsonKey(name: 'results')
  List<Result>? results;

  HotAndNewRespo({this.page, this.results});

  factory HotAndNewRespo.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewRespoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewRespoToJson(this);
}

@JsonSerializable()
class Result {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: "id")
  int? id;

  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: "overview")
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  @JsonKey(name: "title")
  String? title;

  Result({
    this.backdropPath,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
