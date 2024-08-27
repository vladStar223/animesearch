

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChoosePanel extends StatelessWidget{
  const ChoosePanel({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(onPressed: (){}, child: const Text('User')),
            TextButton(onPressed: (){}, child: const Text('Anime')),
            TextButton(onPressed: (){}, child: const Text('Manga')),
          ],
        ),
        Divider(

        ),
      ],
    );
    throw UnimplementedError();
  }



}