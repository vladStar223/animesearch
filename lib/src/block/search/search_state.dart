part of 'search_bloc.dart';

@immutable
sealed class SearchState {}


final class SearchInitial extends SearchState {

}
final class SearchStartedInProgress extends SearchState {

}
final class SearchStartedSuccess extends SearchState {

}
final class SearchStartedFailure extends SearchState {

}
//state searching

enum  SearchChooseStatus { initial, user, anime, manga }
final class SearchChooseState extends SearchState {
  SearchChooseState({this.status = SearchChooseStatus.initial});
  final SearchChooseStatus status;
}