// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScarchResultData _$ScarchResultDataFromJson(Map<String, dynamic> json) =>
    ScarchResultData(
      id: (json['id'] as num?)?.toInt(),
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$ScarchResultDataToJson(ScarchResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
