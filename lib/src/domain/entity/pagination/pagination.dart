


import 'package:json_annotation/json_annotation.dart';


part 'pagination.g.dart';
@JsonSerializable()
class Pagination{
   int last_visible_page;
   bool has_next_page;
   Items  items;
   Pagination(this.last_visible_page,this.has_next_page,this.items);
   factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);
   Map<String, dynamic> toJson() => _$PaginationToJson(this);
}
@JsonSerializable()
class Items{
  int count;
  int total;
  int per_page;
  Items(this.count,this.total,this.per_page);
  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}