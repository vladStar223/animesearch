




import 'package:flutter/material.dart';

class UserCard extends StatelessWidget{
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album, size: 50),
            title: Text('Heart Shaker'),
            subtitle: Text('TWICE'),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }

}