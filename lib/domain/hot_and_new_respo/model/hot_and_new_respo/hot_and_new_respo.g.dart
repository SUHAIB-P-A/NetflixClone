// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_and_new_respo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotAndNewRespo _$HotAndNewRespoFromJson(Map<String, dynamic> json) =>
    HotAndNewRespo(
      page: json['1'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HotAndNewRespoToJson(HotAndNewRespo instance) =>
    <String, dynamic>{
      '1': instance.page,
      'results': instance.results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
    };
