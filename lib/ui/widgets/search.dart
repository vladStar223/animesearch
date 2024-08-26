



import 'package:flutter/material.dart';

class Search extends StatefulWidget{
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final TextEditingController _textEditingController = TextEditingController();
    return SearchBar(
      leading: const Icon(Icons.search),
      autoFocus: true,
      hintText: 'Search',
      controller: _textEditingController,
      onChanged: (String value) {
        print('0y8-yg7807878');
      },
      onTap: () {
        _textEditingController.clear();
        // The code below only works with SearchAnchor
        // _searchController.openView();
      },
    );
    throw UnimplementedError();
  }
}
/*
 trailing: [
        IconButton(
          icon: const Icon(Icons.keyboard_voice),
          onPressed: () {
            print('Use voice command');
          },
        ),
        IconButton(
          icon: const Icon(Icons.camera_alt),
          onPressed: () {
            print('Use image search');
          },
        ),
      ],
 */