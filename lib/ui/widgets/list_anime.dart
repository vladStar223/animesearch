import 'package:flutter/material.dart';

import '../../src/domain/entity/Anime/anime.dart';
import 'anime_card.dart';

class ListAnimeResult extends StatelessWidget{
  ListAnimeResult(this.anime,{super.key});
  Anime anime;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: anime.data.length,
        itemBuilder: (BuildContext context, int index) {
          return AnimeCard(
              anime.data[index].title,
              anime.data[index].images.jpg.small_image_url,
              anime.data[index].url,
          );
        }
    );
    throw UnimplementedError();
  }

}