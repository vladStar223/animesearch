import 'dart:async';

import 'package:animesearch/src/block/search/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../src/block/swich/swich_bloc.dart';

class Search extends StatefulWidget {
  Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final TextEditingController _textEditingController = TextEditingController();
    String status;
    return BlocBuilder<SwichBloc, SwichState>(
      builder: (context, state) {
        switch(state.status){
          case SwichStatus.initial:
            status = 'Search something';
          case SwichStatus.user:
            status = 'Search users';
          case SwichStatus.anime:
            status = 'Search anime';
          case SwichStatus.manga:
            status = 'Search manga';
        }
        return SearchBar(
          leading: const Icon(Icons.search),
          autoFocus: true,
          hintText: status,
          controller: _textEditingController,
          onChanged: (String value) {
            BlocProvider.of<SearchBloc>(context).add(SearchStarted(state.status,value));
          },
          onTap: () {
            //_textEditingController.clear();
            // The code below only works with SearchAnchor
            // _searchController.openView();
          },
        );
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