import 'package:animesearch/src/block/search/search_bloc.dart';
import 'package:animesearch/src/responsive/responsive.dart';
import 'package:animesearch/theme/theme_app.dart';
import 'package:animesearch/ui/screens/background.dart';
import 'package:animesearch/ui/screens/search_panel.dart';
import 'package:animesearch/ui/widgets/search.dart';
import 'package:animesearch/ui/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  themeData(),

    home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context) => SearchBloc(),
      child:  Scaffold(
        body:SafeArea(
          child: Stack(
            children: [
               Background(),
              SearchPanel(),
            ],
          ),
        )
      ),
    );
    throw UnimplementedError();
  }

}
