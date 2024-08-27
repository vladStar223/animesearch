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

