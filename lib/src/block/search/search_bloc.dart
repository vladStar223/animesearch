

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import '../../domain/api_clients/api.dart';
import '../swich/swich_bloc.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<SearchStarted>(_start);
  }
  _start(SearchStarted event,Emitter<SearchState> emit ) async {
    if(event.status == SwichStatus.initial){
      print('232');
      print(event.status);
    }
    else{
      print(event.status);
    }
}// запуск поиска
  _startSearching(){
    var x = ApiClient();
    x.fetchUsers('vvv');
  }// осуществление поиска


}