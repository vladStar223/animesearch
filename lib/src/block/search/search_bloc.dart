

import 'package:bloc/bloc.dart';
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
    on<SearchStarted>(_start);
    on<SearchUserButtonGet>(_getUsers);
  }
  _start(SearchStarted event,Emitter<SearchState> emit ) async {
    emit(SearchStartedInProgress());
    switch(event.status){
      case SwichStatus.initial:
        print('goo1');
      case SwichStatus.user:
        add(SearchUserButtonGet());
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
      var users =  await api.fetchUsers('vvv');
      emit(SearchStartedSuccess(users));
    }catch(e){
      emit(SearchStartedFailure(e));
    }finally{
     print('Отработало');
    }

  }


}