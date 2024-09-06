import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'anime_card.dart';

class MangaCard extends StatelessWidget{
  MangaCard(this.name,this.urlImage,this.urlProfile,this.about,{super.key});
  String urlImage;
  String name;
  String urlProfile;
  String about;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: urlImage,
                      imageBuilder: (context, imageProvider) => Image(
                        image: imageProvider,
                      ),
                      placeholder: (context, url) => Icon(Icons.person_2),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),),
                )),
            Flexible(
                flex:3 ,
                child: Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Text(name,style: TextStyle(fontSize: 20),),
                    Text(about,
                      maxLines: 7,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return AnimeAbout();  }));
                    }, child: Text('Testing')),
                  ],
                ))
          ],
        )
    );
    throw UnimplementedError();
  }
}