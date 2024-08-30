

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;


import '../../domain/api_clients/api.dart';
import '../../domain/entity/User/users.dart';
import '../swich/swich_bloc.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<SearchStarted>(_start,transformer: droppable());//https://henryadu.hashnode.dev/how-to-use-event-transformers-with-bloc
    on<SearchUserButtonGet>(_getUsers);
  }
  _start(SearchStarted event,Emitter<SearchState> emit ) async {

    switch(event.status){
      case SwichStatus.initial:
        print('sfs');
      case SwichStatus.user:
        emit(SearchStartedInProgress());
        add(SearchUserButtonGet(event.text));
        print('user_search');
        // TODO: Handle this case.
      case SwichStatus.anime:
        // TODO: Handle this case.
        print('goo2');
      case SwichStatus.manga:
        print('goo3');
        // TODO: Handle this case.
    }
}// запуск поиска
  _getUsers(SearchUserButtonGet event,Emitter<SearchState> emit ) async {
    try{
      var api  = ApiClient();
      Users users =  await api.fetchUsers(event.text);
      //emit(SearchStartedSuccessEmpty());
      print(users.runtimeType);
      emit(SearchStartedSuccess(users));
    }catch(e){
      emit(SearchStartedFailure(e));
    }finally{
     print('Отработало');
    }

  }


}