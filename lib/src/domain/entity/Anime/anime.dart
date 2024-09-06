





import 'package:animesearch/src/domain/entity/Anime/data_anime.dart';
import 'package:animesearch/src/domain/entity/pagination/pagination.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime.g.dart';
@JsonSerializable()
class Anime{
  final Pagination pagination;
  List<DataAnime> data;
  Anime(this.data,this.pagination);
  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);
  Map<String, dynamic> toJson() => _$AnimeToJson(this);
}
