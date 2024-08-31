// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pagination2 _$Pagination2FromJson(Map<String, dynamic> json) => Pagination2(
      (json['last_visible_page'] as num).toInt(),
      json['has_next_page'] as bool,
      Items.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Pagination2ToJson(Pagination2 instance) =>
    <String, dynamic>{
      'last_visible_page': instance.last_visible_page,
      'has_next_page': instance.has_next_page,
      'items': instance.items,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      (json['count'] as num).toInt(),
      (json['total'] as num).toInt(),
      (json['per_page'] as num).toInt(),
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'count': instance.count,
      'total': instance.total,
      'per_page': instance.per_page,
    };
