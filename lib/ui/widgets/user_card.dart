




import 'package:animesearch/theme/constants.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget{
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     String url = "https://cdn.myanimelist.net/images/kaomoji_mal_white.png";
    return Card(
      color: AppColors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
                child: Image.network(url,),
            ),
            title: Text('User'),
            //subtitle: const Text('TWIC'),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }

}