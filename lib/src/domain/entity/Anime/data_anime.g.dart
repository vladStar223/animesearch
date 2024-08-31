// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataAnime _$DataAnimeFromJson(Map<String, dynamic> json) => DataAnime(
      (json['mal_id'] as num).toInt(),
      json['url'] as String,
      Images.fromJson(json['images'] as Map<String, dynamic>),
      Trailer.fromJson(json['trailer'] as Map<String, dynamic>),
      json['approved'] as bool,
      (json['titles'] as List<dynamic>)
          .map((e) => Titles.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['title'] as String,
      json['title_english'] as String?,
      json['title_japanese'] as String,
      (json['title_synonyms'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      json['type'] as String,
      json['source'] as String,
      (json['episodes'] as num).toInt(),
      json['status'] as String,
      json['airing'] as bool,
      Aired.fromJson(json['aired'] as Map<String, dynamic>),
      json['duration'] as String,
      json['rating'] as String,
      (json['score'] as num).toInt(),
      (json['scored_by'] as num).toInt(),
      (json['rank'] as num).toInt(),
      (json['popularity'] as num).toInt(),
      (json['members'] as num).toInt(),
      (json['favorites'] as num).toInt(),
      json['synopsis'] as String,
      json['background'] as String,
      json['season'] as String,
      (json['year'] as num).toInt(),
      Broadcast.fromJson(json['broadcast'] as Map<String, dynamic>),
      (json['producers'] as List<dynamic>)
          .map((e) => AboutHumanOrCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['licensors'] as List<dynamic>)
          .map((e) => AboutHumanOrCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['studios'] as List<dynamic>)
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
    );

Map<String, dynamic> _$DataAnimeToJson(DataAnime instance) => <String, dynamic>{
      'mal_id': instance.mal_id,
      'url': instance.url,
      'images': instance.images,
      'trailer': instance.trailer,
      'approved': instance.approved,
      'titles': instance.titles,
      'title': instance.title,
      'title_english': instance.title_english,
      'title_japanese': instance.title_japanese,
      'title_synonyms': instance.title_synonyms,
      'type': instance.type,
      'source': instance.source,
      'episodes': instance.episodes,
      'status': instance.status,
      'airing': instance.airing,
      'aired': instance.aired,
      'duration': instance.duration,
      'rating': instance.rating,
      'score': instance.score,
      'scored_by': instance.scored_by,
      'rank': instance.rank,
      'popularity': instance.popularity,
      'members': instance.members,
      'favorites': instance.favorites,
      'synopsis': instance.synopsis,
      'background': instance.background,
      'season': instance.season,
      'year': instance.year,
      'broadcast': instance.broadcast,
      'producers': instance.producers,
      'licensors': instance.licensors,
      'studios': instance.studios,
      'genres': instance.genres,
      'explicit_genres': instance.explicit_genres,
      'themes': instance.themes,
      'demographics': instance.demographics,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      Jpg.fromJson(json['jpg'] as Map<String, dynamic>),
      Webp.fromJson(json['webp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'jpg': instance.jpg,
      'webp': instance.webp,
    };

Jpg _$JpgFromJson(Map<String, dynamic> json) => Jpg(
      json['image_url'] as String,
      json['small_image_url'] as String,
      json['large_image_url'] as String,
    );

Map<String, dynamic> _$JpgToJson(Jpg instance) => <String, dynamic>{
      'image_url': instance.image_url,
      'small_image_url': instance.small_image_url,
      'large_image_url': instance.large_image_url,
    };

Webp _$WebpFromJson(Map<String, dynamic> json) => Webp(
      json['image_url'] as String,
      json['small_image_url'] as String,
      json['large_image_url'] as String,
    );

Map<String, dynamic> _$WebpToJson(Webp instance) => <String, dynamic>{
      'image_url': instance.image_url,
      'small_image_url': instance.small_image_url,
      'large_image_url': instance.large_image_url,
    };

Trailer _$TrailerFromJson(Map<String, dynamic> json) => Trailer(
      json['youtube_id'] as String,
      json['url'] as String,
      json['embed_url'] as String,
    );

Map<String, dynamic> _$TrailerToJson(Trailer instance) => <String, dynamic>{
      'youtube_id': instance.youtube_id,
      'url': instance.url,
      'embed_url': instance.embed_url,
    };

Titles _$TitlesFromJson(Map<String, dynamic> json) => Titles(
      json['type'] as String,
      json['title'] as String,
    );

Map<String, dynamic> _$TitlesToJson(Titles instance) => <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
    };

Aired _$AiredFromJson(Map<String, dynamic> json) => Aired(
      json['from'] as String,
      json['to'] as String,
      Prop.fromJson(json['prop'] as Map<String, dynamic>),
      json['string'] as String?,
    );

Map<String, dynamic> _$AiredToJson(Aired instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'prop': instance.prop,
      'string': instance.string,
    };

Prop _$PropFromJson(Map<String, dynamic> json) => Prop(
      From.fromJson(json['from'] as Map<String, dynamic>),
      To.fromJson(json['to'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PropToJson(Prop instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };

From _$FromFromJson(Map<String, dynamic> json) => From(
      (json['day'] as num).toInt(),
      (json['month'] as num).toInt(),
      (json['year'] as num).toInt(),
    );

Map<String, dynamic> _$FromToJson(From instance) => <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
    };

To _$ToFromJson(Map<String, dynamic> json) => To(
      (json['day'] as num).toInt(),
      (json['month'] as num).toInt(),
      (json['year'] as num).toInt(),
    );

Map<String, dynamic> _$ToToJson(To instance) => <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
    };

Broadcast _$BroadcastFromJson(Map<String, dynamic> json) => Broadcast(
      json['day'] as String,
      json['time'] as String,
      json['timezone'] as String,
      json['string'] as String,
    );

Map<String, dynamic> _$BroadcastToJson(Broadcast instance) => <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
      'timezone': instance.timezone,
      'string': instance.string,
    };

AboutHumanOrCompany _$AboutHumanOrCompanyFromJson(Map<String, dynamic> json) =>
    AboutHumanOrCompany(
      (json['mal_id'] as num).toInt(),
      json['type'] as String,
      json['name'] as String,
      json['url'] as String,
    );

Map<String, dynamic> _$AboutHumanOrCompanyToJson(
        AboutHumanOrCompany instance) =>
    <String, dynamic>{
      'mal_id': instance.mal_id,
      'type': instance.type,
      'name': instance.name,
      'url': instance.url,
    };
