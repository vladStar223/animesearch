import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../src/block/search/search_bloc.dart';
import '../widgets/list_result.dart';
import '../widgets/user_card.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        if(state is SearchStartedSuccess){
          return Expanded(child: ListResult(state.users));
        }
        return Expanded(child: Text('Testing'));
      },
    );
    throw UnimplementedError();
  }


}