part of 'search_bloc.dart';

@immutable
sealed class SearchState extends Equatable {}


final class SearchInitial extends SearchState {
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
final class SearchStartedInProgress extends SearchState {
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
final class SearchStartedSuccess extends SearchState {
  var users;
  var anime;
  var manga;
  SearchStartedSuccess({this.users,this.anime,this.manga});
  @override
  // TODO: implement props
  List<Object?> get props => [users,anime,manga];
  //Users users;
}
final class SearchStartedFailure extends SearchState {
  SearchStartedFailure(this.exception);
  final Object? exception;
  @override
  // TODO: implement props
  List<Object?> get props => [exception];

}
final class SearchStartedEmpty extends SearchState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
//state searching

