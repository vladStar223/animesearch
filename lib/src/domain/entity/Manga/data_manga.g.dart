// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataManga _$DataMangaFromJson(Map<String, dynamic> json) => DataManga(
      (json['mal_id'] as num).toInt(),
      json['url'] as String,
      Images.fromJson(json['images'] as Map<String, dynamic>),
      json['approved'] as bool?,
      (json['titles'] as List<dynamic>)
          .map((e) => Titles.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['title'] as String,
      json['title_english'] as String?,
      json['title_japanese'] as String?,
      (json['title_synonyms'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      json['type'] as String?,
      (json['chapters'] as num).toInt(),
      (json['volumes'] as num?)?.toInt(),
      json['publishing'] as bool?,
      Aired.fromJson(json['published'] as Map<String, dynamic>),
      json['status'] as String?,
      (json['score'] as num?)?.toInt(),
      (json['scored_by'] as num?)?.toInt(),
      (json['rank'] as num?)?.toInt(),
      (json['popularity'] as num?)?.toInt(),
      (json['members'] as num?)?.toInt(),
      (json['favorites'] as num?)?.toInt(),
      json['synopsis'] as String?,
      json['background'] as String?,
      (json['authors'] as List<dynamic>)
          .map((e) => AboutHumanOrCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['serializations'] as List<dynamic>)
          .map((e) => AboutHumanOrCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['genres'] as List<dynamic>)
          .map((e) => AboutHumanOrCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['explicit_genres'] as List<dynamic>)
          .map((e) => AboutHumanOrCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['themes'] as List<dynamic>)
          .map((e) => AboutHumanOrCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['demographics'] as List<dynamic>)
          .map((e) => AboutHumanOrCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['relations'] as List<dynamic>)
          .map((e) => Relations.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['external'] as List<dynamic>)
          .map((e) => External.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataMangaToJson(DataManga instance) => <String, dynamic>{
      'mal_id': instance.mal_id,
      'url': instance.url,
      'images': instance.images,
      'approved': instance.approved,
      'titles': instance.titles,
      'title': instance.title,
      'title_english': instance.title_english,
      'title_japanese': instance.title_japanese,
      'title_synonyms': instance.title_synonyms,
      'type': instance.type,
      'chapters': instance.chapters,
      'volumes': instance.volumes,
      'status': instance.status,
      'publishing': instance.publishing,
      'published': instance.published,
      'score': instance.score,
      'scored_by': instance.scored_by,
      'rank': instance.rank,
      'popularity': instance.popularity,
      'members': instance.members,
      'favorites': instance.favorites,
      'synopsis': instance.synopsis,
      'background': instance.background,
      'authors': instance.authors,
      'serializations': instance.serializations,
      'genres': instance.genres,
      'explicit_genres': instance.explicit_genres,
      'themes': instance.themes,
      'demographics': instance.demographics,
      'relations': instance.relations,
      'external': instance.external,
    };

Relations _$RelationsFromJson(Map<String, dynamic> json) => Relations(
      json['relation'] as String,
      (json['entry'] as List<dynamic>)
          .map((e) => AboutHumanOrCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RelationsToJson(Relations instance) => <String, dynamic>{
      'relation': instance.relation,
      'entry': instance.entry,
    };

External _$ExternalFromJson(Map<String, dynamic> json) => External(
      json['name'] as String,
      json['url'] as String,
    );

Map<String, dynamic> _$ExternalToJson(External instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
