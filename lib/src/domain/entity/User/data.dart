


import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';
@JsonSerializable()
class Data{
  String username;
  String url;
  Images images;
  String last_online;
  Data(this.username,this.url,this.images,this.last_online);
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Images {
  JRG jpg;
  Webp webp;
  Images(this.jpg,this.webp);
  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

@JsonSerializable()
class JRG {
  JRG(this.image_url);
  String image_url;
  factory JRG.fromJson(Map<String, dynamic> json) => _$JRGFromJson(json);
  Map<String, dynamic> toJson() => _$JRGToJson(this);
}
@JsonSerializable()
class Pagination{
  int last_visible_page;
  bool has_next_page;
  Pagination(this.last_visible_page,this.has_next_page);
  factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);
  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}
@JsonSerializable()
class Webp {
  String image_url;
  Webp(this.image_url);
  factory Webp.fromJson(Map<String, dynamic> json) => _$WebpFromJson(json);
  Map<String, dynamic> toJson() => _$WebpToJson(this);
}