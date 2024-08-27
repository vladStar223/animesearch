


import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'users.g.dart';
@JsonSerializable()
class Users{
 final Pagination pagination;
 List<Data> data;
 Users(this.pagination,this.data);
 factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
 Map<String, dynamic> toJson() => _$UsersToJson(this);
}
