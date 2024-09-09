





import 'package:animesearch/theme/constants.dart';
import 'package:animesearch/ui/widgets/card/user_card.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'card/anime_card.dart';

class ProgressBar extends StatelessWidget {
  String sizeUrl = 'https://cdn.myanimelist.net//images//kaomoji_mal_white.png"';

  ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      child: Shimmer.fromColors(
          baseColor: AppColors.white,
          highlightColor: AppColors.lightBlueNormal,
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return UserCard('', '', '');
              }
          )
      ),
    );
  }

}
/*
return Center(child: SizedBox(child: LinearProgressIndicator(
      backgroundColor: Colors.cyanAccent,
      valueColor:AlwaysStoppedAnimation<Color>(Colors.red),
    )));
    return SizedBox(
      child: Shimmer.fromColors(
          baseColor: AppColors.white,
          highlightColor: AppColors.lightBlueNormal,
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return UserCard('', '', '');
              }
          )
      ),
    );
    throw UnimplementedError();
  }
*/