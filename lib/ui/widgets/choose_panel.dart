

import 'package:animesearch/ui/widgets/choose_button.dart';
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
            ChooseButton(),
            ChooseButton(),
            ChooseButton(),
          ],
        ),
        Divider(

        ),
      ],
    );
    throw UnimplementedError();
  }



}