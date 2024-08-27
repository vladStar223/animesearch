import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../search/search_bloc.dart';

part 'swich_event.dart';
part 'swich_state.dart';

class SwichBloc extends Bloc<SwichEvent, SwichState> {
  SwichBloc() : super(SwichState()) {
    on<SwichEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
