import 'package:animesearch/ui/widgets/card/manga_card.dart';
import 'package:flutter/material.dart';

import '../../../src/domain/entity/Manga/manga.dart';

class ListMangaResult extends StatelessWidget{
  ListMangaResult(this.manga,{super.key});
  Manga manga;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: manga.data.length,
        itemBuilder: (BuildContext context, int index) {
          return MangaCard(
            manga.data[index].title_english?? manga.data[index].title,
            manga.data[index].images.jpg.large_image_url,
            manga.data[index].url,manga.data[index].synopsis??'Not synopsis',
          );
        }
    );
    throw UnimplementedError();
  }

}