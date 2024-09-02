
import 'package:json_annotation/json_annotation.dart';


part 'data_anime.g.dart';
@JsonSerializable()
class DataAnime {
  int mal_id;
  String url;
  Images images;
  Trailer trailer;
  bool? approved;
  List<Titles> titles;
  String title;
  String? title_english;
  String? title_japanese;
  List<String> title_synonyms;
  String? type;
  String? source;
  int? episodes;
  String? status;
  bool? airing;
  Aired aired;
  String? duration;
  String? rating;
  int? score;
  int? scored_by;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  String? background;
  String? season;
  int? year;
  Broadcast broadcast;
  List<AboutHumanOrCompany>? producers;
  List<AboutHumanOrCompany>? licensors;
  List<AboutHumanOrCompany>? studios;
  List<AboutHumanOrCompany>? genres;
  List<AboutHumanOrCompany>? explicit_genres;
  List<AboutHumanOrCompany>? themes;
  List<AboutHumanOrCompany>? demographics;
  DataAnime(
    this.mal_id,
    this.url,
    this.images,
    this.trailer,
    this.approved,
    this.titles,
    this.title,
    this.title_english,
    this.title_japanese,
    this.title_synonyms,
    this.type,
    this.source,
    this.episodes,
    this.status,
    this.airing,
    this.aired,
    this.duration,
    this.rating,
    this.score,
    this.scored_by,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.season,
    this.year,
    this.broadcast,
    this.producers,
    this.licensors,
    this.studios,
    this.genres,
    this.explicit_genres,
    this.themes,
    this.demographics,
  );
  factory DataAnime.fromJson(Map<String, dynamic> json) => _$DataAnimeFromJson(json);
  Map<String, dynamic> toJson() => _$DataAnimeToJson(this);
}
@JsonSerializable()
class Images{
  Jpg jpg;
  Webp webp;
  Images(this.jpg,this.webp);
  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}
@JsonSerializable()
class Jpg{
  String image_url;
  String small_image_url;
  String large_image_url;
  Jpg(this.image_url,this.small_image_url,this.large_image_url);
  factory Jpg.fromJson(Map<String, dynamic> json) => _$JpgFromJson(json);
  Map<String, dynamic> toJson() => _$JpgToJson(this);

}
@JsonSerializable()
class Webp{
  String image_url;
  String small_image_url;
  String large_image_url;
  Webp(this.image_url,this.small_image_url,this.large_image_url);
  factory Webp.fromJson(Map<String, dynamic> json) => _$WebpFromJson(json);
  Map<String, dynamic> toJson() => _$WebpToJson(this);

}
@JsonSerializable()
class Trailer{
  String? youtube_id;
  String? url;
  String? embed_url;
  Trailer(this.youtube_id,this.url,this.embed_url);
  factory Trailer.fromJson(Map<String, dynamic> json) => _$TrailerFromJson(json);
  Map<String, dynamic> toJson() => _$TrailerToJson(this);
}
@JsonSerializable()
class Titles{
  String type;
  String title;
  Titles(this.type,this.title);
  factory Titles.fromJson(Map<String, dynamic> json) => _$TitlesFromJson(json);
  Map<String, dynamic> toJson() => _$TitlesToJson(this);
}
@JsonSerializable()
class Aired{
  String? from;
  String? to;
  Prop prop;
  String? string;
  Aired(this.from,this.to,this.prop,this.string);
  factory Aired.fromJson(Map<String, dynamic> json) => _$AiredFromJson(json);
  Map<String, dynamic> toJson() => _$AiredToJson(this);
}
@JsonSerializable()
class Prop{
  From? from;
  To? to;
  Prop(this.from,this.to);
  factory Prop.fromJson(Map<String, dynamic> json) => _$PropFromJson(json);
  Map<String, dynamic> toJson() => _$PropToJson(this);

}
@JsonSerializable()
class From{
  int? day;
  int? month;
  int? year;
  From(this.day,this.month,this.year);
  factory From.fromJson(Map<String, dynamic> json) => _$FromFromJson(json);
  Map<String, dynamic> toJson() => _$FromToJson(this);
}
@JsonSerializable()
class To{
  int? day;
  int? month;
  int? year;
  To(this.day,this.month,this.year);
  factory To.fromJson(Map<String, dynamic> json) => _$ToFromJson(json);
  Map<String, dynamic> toJson() => _$ToToJson(this);
}
@JsonSerializable()
class Broadcast{
  String? day;
  String? time;
  String? timezone;
  String? string;
  Broadcast(this.day,this.time,this.timezone,this.string);
  factory Broadcast.fromJson(Map<String, dynamic> json) => _$BroadcastFromJson(json);
  Map<String, dynamic> toJson() => _$BroadcastToJson(this);
}
@JsonSerializable()
class AboutHumanOrCompany{
  int? mal_id;
  String? type;
  String? name;
  String? url;
  AboutHumanOrCompany(this.mal_id,this.type,this.name,this.url);
  factory AboutHumanOrCompany.fromJson(Map<String, dynamic> json) => _$AboutHumanOrCompanyFromJson(json);
  Map<String, dynamic> toJson() => _$AboutHumanOrCompanyToJson(this);
}