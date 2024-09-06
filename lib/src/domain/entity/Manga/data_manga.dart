



import 'package:json_annotation/json_annotation.dart';

import '../Anime/data_anime.dart';
import '../images/images.dart';
part 'data_manga.g.dart';
@JsonSerializable()
class DataManga{
  int mal_id;
  String url;
  Images images;
  bool? approved;
  List<Titles> titles;
  String title;
  String? title_english;
  String? title_japanese;
  List<String> title_synonyms;
  String? type;
  int? chapters;
  int? volumes;
  String? status;
  bool? publishing;
  Aired published;
  int? score;
  int? scored_by;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  String? background;
  List<AboutHumanOrCompany>? authors;
  List<AboutHumanOrCompany>? serializations;
  List<AboutHumanOrCompany>? genres;
  List<AboutHumanOrCompany>? explicit_genres;
  List<AboutHumanOrCompany>? themes;
  List<AboutHumanOrCompany>? demographics;
  List<Relations>? relations;
  List<External>? external;
  DataManga(
      this.mal_id,
      this.url,
      this.images,
      this.approved,
      this.titles,
      this.title,
      this.title_english,
      this.title_japanese,
      this.title_synonyms,
      this.type,
      this.chapters,
      this.volumes,
      this.publishing,
      this.published,
      this.status,
      this.score,
      this.scored_by,
      this.rank,
      this.popularity,
      this.members,
      this.favorites,
      this.synopsis,
      this.background,
      this.authors,
      this.serializations,
      this.genres,
      this.explicit_genres,
      this.themes,
      this.demographics,
      this.relations,
      this.external,
      );
  factory DataManga.fromJson(Map<String, dynamic> json) => _$DataMangaFromJson(json);
  Map<String, dynamic> toJson() => _$DataMangaToJson(this);

}
@JsonSerializable()
 class Relations{
  String relation;
  List<AboutHumanOrCompany> entry;
  Relations(this.relation,this.entry);
  factory Relations.fromJson(Map<String, dynamic> json) => _$RelationsFromJson(json);
  Map<String, dynamic> toJson() => _$RelationsToJson(this);
 }
@JsonSerializable()
 class External{
  String name;
  String url;
  External(this.name,this.url);
  factory External.fromJson(Map<String, dynamic> json) => _$ExternalFromJson(json);
  Map<String, dynamic> toJson() => _$ExternalToJson(this);

}
