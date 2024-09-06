


import 'package:json_annotation/json_annotation.dart';

import '../images/images.dart';

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
