



import 'package:animesearch/src/block/swich/swich_bloc.dart';
import 'package:animesearch/theme/constants.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
class UserCard extends StatelessWidget{
  UserCard(this.name,this.urlImage,this.urlProfile,{super.key});
  String urlImage;
  String name;
  String urlProfile;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
                title: Text(name),
              leading: CachedNetworkImage(
                imageUrl: urlImage,
                imageBuilder: (context, imageProvider) => CircleAvatar(
                  backgroundImage: imageProvider,
                ),
                placeholder: (context, url) => Icon(Icons.person_2),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              trailing: TextButton(onPressed: () async {
                final Uri _url = Uri.parse(urlProfile);
                await launchUrl(_url,mode: LaunchMode.externalApplication);
                //BlocProvider.of<SwichBloc>(context).state.status= SwichStatus.anime;
              }, child: Text('add')),
            ),
              //subtitle: const Text('last_online'),
          ],
        ),
      );
      throw UnimplementedError();
    }
  }