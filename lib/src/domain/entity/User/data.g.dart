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
