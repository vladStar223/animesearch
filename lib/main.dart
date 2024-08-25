import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'block/search/search_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      child: Scaffold(
        body: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('323'),
                TextButton(onPressed: () {
                  BlocProvider.of<SearchBloc>(context).add(SearchStarted());
                }, child: Text('Click')),
              ],
            ));
          },
        ),
      ),
    );
    throw UnimplementedError();
  }

}
