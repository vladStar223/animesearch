




import 'package:animesearch/ui/widgets/user_card.dart';
import 'package:flutter/material.dart';

class ListResult extends StatelessWidget{
  const ListResult({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return Text('Test');
        }
    );
    throw UnimplementedError();
  }

}