// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Anime _$AnimeFromJson(Map<String, dynamic> json) => Anime(
      (json['data'] as List<dynamic>)
          .map((e) => DataAnime.fromJson(e as Map<String, dynamic>))
          .toList(),
      Pagination2.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeToJson(Anime instance) => <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
