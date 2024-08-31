


import 'package:json_annotation/json_annotation.dart';


part 'pagination1.g.dart';
@JsonSerializable()
class Pagination2{
   int last_visible_page;
   bool has_next_page;
   Items  items;
   Pagination2(this.last_visible_page,this.has_next_page,this.items);
   factory Pagination2.fromJson(Map<String, dynamic> json) => _$Pagination2FromJson(json);
   Map<String, dynamic> toJson() => _$Pagination2ToJson(this);
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