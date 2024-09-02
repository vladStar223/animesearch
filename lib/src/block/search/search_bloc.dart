

import 'dart:async';

import 'package:animesearch/src/domain/entity/Anime/anime.dart';
import 'package:animesearch/src/domain/exception/api_exception.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
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
    on<SearchUserButtonGet>(_getUsers,transformer:droppable());
    on<SearchAnimeButtonGet>(_getAnime,transformer:droppable());
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
        emit(SearchStartedInProgress());
        add(SearchAnimeButtonGet(event.text));
        print('anime_search');
      case SwichStatus.manga:
        print('goo3');
        // TODO: Handle this case.
    }
}// запуск поиска
  _getUsers(SearchUserButtonGet event,Emitter<SearchState> emit ) async {
    try{
      var api  = ApiClient();
      Users users =  await api.fetchUsers(event.text);
      if(users.data.isEmpty){
       emit(SearchStartedEmpty());
      }
      else{
        emit(SearchStartedSuccess(users: users));
      }
    }on EmptyRequestException  catch(e){
      emit(SearchStartedEmpty());
    }on TypeError catch(e){
      //print(e.toString());
      emit(SearchStartedEmpty());
    }
    catch(e){
      print(e.runtimeType);
    }

  }
  _getAnime(SearchAnimeButtonGet event,Emitter<SearchState> emit ) async {

    try{
      var api  = ApiClient();
      Anime anime =  await api.fetchAnime(event.text);
      //print(anime.data[0].title);
      if(anime .data.isEmpty){
        emit(SearchStartedEmpty());
      }
      else{
        //print(anime.data[0].synopsis?.replaceAll('\n', ''));
        emit(SearchStartedSuccess(anime: anime));
      }
    }on EmptyRequestException  catch(e){
      //print(e.toString());
      emit(SearchStartedEmpty());
    }on TypeError catch(e){
      print(e.toString());
      emit(SearchStartedEmpty());
    }
    catch(e){
      print(e.runtimeType);
    }

  }

}