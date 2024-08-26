import 'package:animesearch/src/block/search/search_bloc.dart';
import 'package:animesearch/src/responsive/responsive.dart';
import 'package:animesearch/theme/test_theme.dart';
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

    home: TestPage(),
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
class TestPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100.sH(context),
            width: 10.sW(context),
            color: Colors.black,
          ),
          TextButton(onPressed: (){}, child: Text('1')),
          TextButton(onPressed: (){}, child: Text('2')),
          TextButton(onPressed: (){}, child: Text('3')),
          TextButton(onPressed: (){}, child: Text('4')),
          TextButton(
              onPressed: (){},
              child: Text('5')),
          TextButton(onPressed: (){}, child: Text('6')),
          TextButton(onPressed: (){}, child: Text('7')),
        ],
      ),),
    );
    throw UnimplementedError();
  }

}
