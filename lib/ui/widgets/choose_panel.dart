

import 'package:animesearch/src/block/swich/swich_bloc.dart';
import 'package:animesearch/ui/widgets/choose_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChoosePanel extends StatelessWidget{
  ChoosePanel({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            UsersButton(),
            AnimeButton(),
            MangaButton(),


          ],
        ),
        Divider(

        ),
      ],
    );
    throw UnimplementedError();
  }



}