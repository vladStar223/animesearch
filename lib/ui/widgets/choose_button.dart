import 'package:animesearch/src/block/search/search_bloc.dart';
import 'package:animesearch/src/block/swich/swich_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersButton extends StatelessWidget {
  const UsersButton({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<SwichBloc, SwichState>(
      builder: (context, state) {
        if(state.status == SwichStatus.user){
          return TextButton(
            style: ButtonStyle(
              side: WidgetStateProperty.all(
                const BorderSide(width: 0.5, color: Colors.black),
              ),
            ),
              onPressed: () {
                BlocProvider.of<SwichBloc>(context).add(SwichUserPressed());
                if(BlocProvider.of<SwichBloc>(context).state.input){
                  BlocProvider.of<SearchBloc>(context).add(SearchStarted(state.status,state.value));
                }
              },
              child: Text('Users'));
        }
        else{
          return TextButton(
              onPressed: () {
                BlocProvider.of<SwichBloc>(context).add(SwichUserPressed());
              },
              child: Text('users'));
        }
      },
    );

    throw UnimplementedError();
  }
}
class AnimeButton extends StatelessWidget {
  const AnimeButton({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<SwichBloc, SwichState>(
      builder: (context, state) {
        if(state.status == SwichStatus.anime){
          return TextButton(
              style: ButtonStyle(
                side: WidgetStateProperty.all(
                  const BorderSide(width: 0.5, color: Colors.black),
                ),
              ),
              onPressed: () {
                BlocProvider.of<SwichBloc>(context).add(SwichAnimePressed());
                if(BlocProvider.of<SwichBloc>(context).state.input){
                  BlocProvider.of<SearchBloc>(context).add(SearchStarted(state.status,state.value));
                }
              },
              child: Text('Anime'));
        }
        else{
          return TextButton(
              onPressed: () {
                BlocProvider.of<SwichBloc>(context).add(SwichAnimePressed());
              },
              child: Text('anime'));
        }
      },
    );

    throw UnimplementedError();
  }
}
class MangaButton extends StatelessWidget {
  const MangaButton({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<SwichBloc, SwichState>(
      builder: (context, state) {
        if(state.status == SwichStatus.manga){
          return TextButton(
              style: ButtonStyle(
                side: WidgetStateProperty.all(
                  const BorderSide(width: 0.5, color: Colors.black),
                ),
              ),
              onPressed: () {
                BlocProvider.of<SwichBloc>(context).add(SwichMangaPressed());
                if(BlocProvider.of<SwichBloc>(context).state.input){
                  BlocProvider.of<SearchBloc>(context).add(SearchStarted(state.status,state.value));
                }
              },
              child: Text('Manga'));
        }
        else{
          return TextButton(
              onPressed: () {
                BlocProvider.of<SwichBloc>(context).add(SwichMangaPressed());
              },
              child: Text('manga'));
        }
      },
    );

    throw UnimplementedError();
  }
}