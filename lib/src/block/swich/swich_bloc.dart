import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../search/search_bloc.dart';

part 'swich_event.dart';
part 'swich_state.dart';

class SwichBloc extends Bloc<SwichEvent, SwichState> {
  SwichBloc() : super(SwichState()) {
    on<SwichUserPressed>(_pressedUser);
    on<SwichAnimePressed>(_pressedAnime);
    on<SwichMangaPressed>(_pressedManga);
  }
  _pressedUser(SwichUserPressed event,Emitter<SwichState> emit ){
    emit(SwichState(status: SwichStatus.user));
    print('users');
  }
  _pressedAnime(SwichAnimePressed event,Emitter<SwichState> emit ){
    emit(SwichState(status: SwichStatus.anime));
    print('anime');
  }
  _pressedManga(SwichMangaPressed event,Emitter<SwichState> emit ){
    emit(SwichState(status: SwichStatus.manga));
    print('manga');
  }
}
