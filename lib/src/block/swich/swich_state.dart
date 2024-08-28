part of 'swich_bloc.dart';


@immutable
enum  SwichStatus { initial, user, anime, manga }
final class SwichState {
  SwichState({this.status = SwichStatus.initial});
  SwichStatus status;
}//status for button
