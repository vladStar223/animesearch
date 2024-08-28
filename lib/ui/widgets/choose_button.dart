import 'package:animesearch/src/block/search/search_bloc.dart';
import 'package:animesearch/src/block/swich/swich_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseButton extends StatelessWidget {
  const ChooseButton({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<SwichBloc, SwichState>(
      builder: (context, state) {
        if(state.status == SwichStatus.anime){
          return TextButton(
            style: ButtonStyle(
              side: WidgetStateProperty.all(
                const BorderSide(width: 1, color: Colors.black),
              ),
            ),
              onPressed: () {
                print('button');

                //BlocProvider.of<SwichBloc>(context).state.status= SwichStatus.anime;
                //BlocProvider.of<SearchBloc>(context).add(SearchStarted(BlocProvider.of<SwichBloc>(context).state.status));
              },
              child: Text('User'));
        }
        else{
          return TextButton(
              onPressed: () {
                print('button');

                BlocProvider.of<SwichBloc>(context).state.status= SwichStatus.anime;
                //BlocProvider.of<SearchBloc>(context).add(SearchStarted(BlocProvider.of<SwichBloc>(context).state.status));
              },
              child: Text('User'));
        }
      },
    );

    throw UnimplementedError();
  }
}