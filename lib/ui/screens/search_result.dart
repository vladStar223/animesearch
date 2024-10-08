import 'package:animesearch/ui/widgets/default_result.dart';
import 'package:animesearch/ui/widgets/empty_result.dart';
import 'package:animesearch/ui/widgets/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../src/block/search/search_bloc.dart';
import '../../src/block/swich/swich_bloc.dart';
import '../widgets/list/list_anime.dart';
import '../widgets/list/list_manga.dart';
import '../widgets/list/list_users.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        switch(state){

          case SearchInitial():
            return Expanded(child: DefaultResult());
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
                return Expanded(child: ListMangaResult(state.manga));
                // TODO: Handle this case.
            }
          case SearchStartedFailure():
            // TODO: Handle this case.
          case SearchStartedEmpty():
            return Expanded(child: EmptyResult());

        }

      },
    );
    throw UnimplementedError();
  }


}