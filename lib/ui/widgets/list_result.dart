




import 'package:flutter/material.dart';

class ListResult extends StatelessWidget{
  ListResult({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 24,
        itemBuilder: (BuildContext context, int index) {
          return child;
        }
    );
    throw UnimplementedError();
  }

}