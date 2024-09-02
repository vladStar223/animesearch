import 'package:animesearch/src/block/swich/swich_bloc.dart';
import 'package:animesearch/theme/constants.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
class AnimeCard extends StatelessWidget{
  AnimeCard(this.name,this.urlImage,this.urlProfile,this.about,{super.key});
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
                    child: Image.network(urlImage)),
              )),
          Flexible(
            flex:3 ,
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  Text(name,style: TextStyle(fontSize: 20),),
                  Text(about,
                    maxLines: 8,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),

                ],
              ))
        ],
      )
    );
    throw UnimplementedError();
  }
}