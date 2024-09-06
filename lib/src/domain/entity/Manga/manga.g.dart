// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Manga _$MangaFromJson(Map<String, dynamic> json) => Manga(
      (json['data'] as List<dynamic>)
          .map((e) => DataManga.fromJson(e as Map<String, dynamic>))
          .toList(),
      Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MangaToJson(Manga instance) => <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
