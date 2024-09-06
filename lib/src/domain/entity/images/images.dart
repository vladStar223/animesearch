import 'package:json_annotation/json_annotation.dart';
part 'images.g.dart';
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