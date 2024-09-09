

import 'dart:async';

import 'package:animesearch/src/domain/entity/Anime/anime.dart';
import 'package:animesearch/src/domain/exception/api_exception.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';


import '../../domain/api_clients/api.dart';
import '../../domain/entity/Manga/manga.dart';
import '../../domain/entity/User/users.dart';
import '../swich/swich_bloc.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<SearchStarted>(_start,transformer:restartable());//https://henryadu.hashnode.dev/how-to-use-event-transformers-with-bloc
    on<SearchUserButtonGet>(_getUsers,transformer:debounceDroppable());
    on<SearchAnimeButtonGet>(_getAnime,transformer:debounceDroppable());
    on<SearchMangaButtonGet>(_getManga,transformer:debounceDroppable());
  }
  EventTransformer<E> throttleDroppable<E>() {
    return (events, mapper) {
      return droppable<E>().call(events.throttleTime(Duration(seconds: 2)), mapper);
    };
  }
  EventTransformer<E> debounceDroppable<E>() {
    return (events, mapper) {
      return droppable<E>().call(events.debounceTime(Duration(seconds: 2)), mapper);
    };
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
        emit(SearchStartedInProgress());
        add(SearchMangaButtonGet(event.text));
        print('manga_search');
        // TODO: Handle this case.

    }
}// запуск поиска
  _getUsers(SearchUserButtonGet event,Emitter<SearchState> emit ) async {
    try{
      var api  = ApiClient();
      Stopwatch stopwatch = new Stopwatch()..start();
      Users users =  await api.fetchUsers(event.text);
      stopwatch.stop();
      print('doSomething() executed in ${stopwatch.elapsed}');
      print(users.data[0].url);
      if(users.data.isEmpty){
       emit(SearchStartedEmpty());
      }
      else{
        emit(SearchStartedSuccess(users: users));
      }
    }on EmptyRequestException  catch(e){
      emit(SearchStartedEmpty());
    }on TypeError catch(e){
      print(e.toString());
      emit(SearchStartedEmpty());
    }
    on RangeError catch(e){
      print(e.toString());
      emit(SearchStartedEmpty());
    }
    catch(e){
      emit(SearchStartedFailure(e));
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
    on RangeError catch(e){
      print(e.toString());
      emit(SearchStartedEmpty());
    }
    catch(e){
      emit(SearchStartedFailure(e));
      print(e.runtimeType);
    }

  }
  _getManga(SearchMangaButtonGet event,Emitter<SearchState> emit) async{
    try{
      var api  = ApiClient();
      Manga manga =  await api.fetchManga(event.text);
      print(manga.data[0].title);
      if(manga .data.isEmpty){
        emit(SearchStartedEmpty());
      }
      else{
        //print(anime.data[0].synopsis?.replaceAll('\n', ''));
        emit(SearchStartedSuccess(manga: manga));
      }
    }on EmptyRequestException  catch(e){
      //print(e.toString());
      emit(SearchStartedEmpty());
    }on TypeError catch(e){
      print(e.toString());
      emit(SearchStartedEmpty());
    }
    on RangeError catch(e){
      print(e.toString());
      emit(SearchStartedEmpty());
    }
    catch(e){
      emit(SearchStartedFailure(e));
      print(e.runtimeType);
    }

  }
}