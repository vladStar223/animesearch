// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
