// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      json['username'] as String,
      json['url'] as String,
      Images.fromJson(json['images'] as Map<String, dynamic>),
      json['last_online'] as String,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'username': instance.username,
      'url': instance.url,
      'images': instance.images,
      'last_online': instance.last_online,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      JRG.fromJson(json['jpg'] as Map<String, dynamic>),
      Webp.fromJson(json['webp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'jpg': instance.jpg,
      'webp': instance.webp,
    };

JRG _$JRGFromJson(Map<String, dynamic> json) => JRG(
      json['image_url'] as String,
    );

Map<String, dynamic> _$JRGToJson(JRG instance) => <String, dynamic>{
      'image_url': instance.image_url,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      (json['last_visible_page'] as num).toInt(),
      json['has_next_page'] as bool,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'last_visible_page': instance.last_visible_page,
      'has_next_page': instance.has_next_page,
    };

Webp _$WebpFromJson(Map<String, dynamic> json) => Webp(
      json['image_url'] as String,
    );

Map<String, dynamic> _$WebpToJson(Webp instance) => <String, dynamic>{
      'image_url': instance.image_url,
    };
