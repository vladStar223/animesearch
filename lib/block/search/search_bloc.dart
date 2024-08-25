import 'dart:convert';

import 'package:animesearch/domain/api_clients/api.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<SearchStarted>(_start);
  }
  _start(SearchStarted event,Emitter<SearchState> emit ) async {
    _startSearching();
}// запуск поиска
  _startSearching(){
    var x = ApiClient();
    x.fetchUsers('vvv');
  }// осуществление поиска


}