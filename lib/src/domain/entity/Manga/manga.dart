


import 'package:animesearch/src/domain/entity/Manga/data_manga.dart';
import 'package:json_annotation/json_annotation.dart';

import '../pagination/pagination.dart';
part 'manga.g.dart';
@JsonSerializable()
class Manga{
  final Pagination pagination;
  List<DataManga> data;
  Manga(this.data,this.pagination);
  factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);
  Map<String, dynamic> toJson() => _$MangaToJson(this);

}