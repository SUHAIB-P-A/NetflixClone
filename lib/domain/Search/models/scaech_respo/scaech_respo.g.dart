// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scaech_respo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScaechRespo _$ScaechRespoFromJson(Map<String, dynamic> json) => ScaechRespo(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => ScarchResultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ScaechRespoToJson(ScaechRespo instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
