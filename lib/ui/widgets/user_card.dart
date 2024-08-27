



import 'package:animesearch/theme/constants.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';
class UserCard extends StatelessWidget{
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    String url = "https://cdn.myanimelist.net/images/kaomoji_mal_white.png";
      return Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
                title: Text('kaomoji'),
              leading: CachedNetworkImage(
                imageUrl: url,
                imageBuilder: (context, imageProvider) => CircleAvatar(
                  backgroundImage: imageProvider,
                ),
                placeholder: (context, url) => Icon(Icons.person_2),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              trailing: TextButton(onPressed: () async {
                final Uri _url = Uri.parse(url);
                await launchUrl(_url,mode: LaunchMode.externalApplication);

              }, child: Text('add')),
            ),
              //subtitle: const Text('last_online'),
          ],
        ),
      );
      throw UnimplementedError();
    }
  }