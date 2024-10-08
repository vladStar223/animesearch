




import 'package:animesearch/src/domain/entity/User/users.dart';
import 'package:animesearch/ui/widgets/card/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../src/block/swich/swich_bloc.dart';

class ListUsersResult extends StatelessWidget{
  ListUsersResult(this.users,{super.key});
  Users users;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: users.data.length,
        itemBuilder: (BuildContext context, int index) {
          return UserCard(users.data[index].username,
              users.data[index].images.jpg.image_url,
              users.data[index].url);
        }
    );
    throw UnimplementedError();
  }

}