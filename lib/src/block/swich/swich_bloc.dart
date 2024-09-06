import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../search/search_bloc.dart';

part 'swich_event.dart';
part 'swich_state.dart';

class SwichBloc extends Bloc<SwichEvent, SwichState> {
  SwichBloc() : super(SwichState()) {
    on<SwichUserPressed>(_pressedUser);
    on<SwichAnimePressed>(_pressedAnime);
    on<SwichMangaPressed>(_pressedManga);
    on<SwichTextInput>(_inputText);
  }
  _pressedUser(SwichUserPressed event,Emitter<SwichState> emit ){
    print(state.value);
    emit(state.copyWith(status: SwichStatus.user));
    print('users');
  }
  _pressedAnime(SwichAnimePressed event,Emitter<SwichState> emit ){
    emit(state.copyWith(status: SwichStatus.anime));
    print(state.value);
    print('anime');
  }
  _pressedManga(SwichMangaPressed event,Emitter<SwichState> emit ){
    emit(state.copyWith(status: SwichStatus.manga));
    print('manga');
  }
  _inputText(SwichTextInput event,Emitter<SwichState> emit ){
    if(event.text.length>0) {
      emit(state.copyWith(input: true));
      emit(state.copyWith(value: event.text));
    }
    else{
      emit(state.copyWith(input: false));
    }

  }
}
