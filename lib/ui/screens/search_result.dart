import 'package:animesearch/ui/widgets/default_result.dart';
import 'package:animesearch/ui/widgets/empty_result.dart';
import 'package:animesearch/ui/widgets/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../src/block/search/search_bloc.dart';
import '../../src/block/swich/swich_bloc.dart';
import '../widgets/list_anime.dart';
import '../widgets/list_users.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        switch(state){
          case SearchInitial():
            // TODO: Handle this case.
          case SearchStartedInProgress():
            return Expanded(child: ProgressBar());
          case SearchStartedSuccess():
            SwichStatus status = BlocProvider.of<SwichBloc>(context).state.status;
            switch(status){
              case SwichStatus.initial:
                return Text('3334');
              case SwichStatus.user:
                return Expanded(child: ListUsersResult(state.users));
                // TODO: Handle this case.
              case SwichStatus.anime:
                return Expanded(child: ListAnimeResult(state.anime));
                // TODO: Handle this case.
              case SwichStatus.manga:
                return Text('34');
                // TODO: Handle this case.
            }
          case SearchStartedFailure():
            // TODO: Handle this case.
          case SearchStartedEmpty():
            return Expanded(child: EmptyResult());
            default:return const Expanded(child: DefaultResult());
        }

      },
    );
    throw UnimplementedError();
  }


}