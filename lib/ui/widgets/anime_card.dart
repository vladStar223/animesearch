import 'package:animesearch/src/block/swich/swich_bloc.dart';
import 'package:animesearch/theme/constants.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
class AnimeCard extends StatelessWidget{
  AnimeCard(this.name,this.urlImage,this.urlProfile,{super.key});
  String urlImage;
  String name;
  String urlProfile;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(

      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
              width: 200,
              child: Image.network(urlImage)),
          Flexible(child: Column(children: [Text(name),],))
        ],
      )
    );
    throw UnimplementedError();
  }
}