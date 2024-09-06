import 'package:animesearch/src/block/search/search_bloc.dart';
import 'package:animesearch/src/block/swich/swich_bloc.dart';
import 'package:animesearch/theme/theme_app.dart';
import 'package:animesearch/ui/screens/background.dart';
import 'package:animesearch/ui/screens/search_result.dart';
import 'package:animesearch/ui/widgets/card/anime_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/screens/search_panel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/first',
      routes: {
        '/first': (context) => MyHomePage(),
        '/about': (context) => AnimeAbout(),
      },
      theme: themeData(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              const Background(),
              MultiBlocProvider(
                providers: [
                  BlocProvider<SwichBloc>(
                    create: (BuildContext context) => SwichBloc(),
                  ),
                  BlocProvider<SearchBloc>(
                    create: (BuildContext context) => SearchBloc(),
                  ),

                ],
                child: const Column(
                  children: [
                    SearchPanel(),
                    SearchResult(),
                  ],
                ),
              )

            ],
          ),
        )
    );
    throw UnimplementedError();
  }

}
//checking