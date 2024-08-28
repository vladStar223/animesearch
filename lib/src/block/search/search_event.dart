part of 'search_bloc.dart';

@immutable
sealed class SearchEvent extends Equatable {}
final class SearchStarted extends SearchEvent{
   final SwichStatus status;
  SearchStarted(this.status);

  @override
  // TODO: implement props
  List<Object?> get props => [status];
}//when start search
final class SearchUserButtonPressed extends SearchEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}//when pressed user button
final class SearchMangaButtonPressed extends SearchEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}//when pressed manga button
final class SearchAnimeButtonPressed extends SearchEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}//when pressed anime button
final class SearchUniversalStarted extends SearchEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}//when type  of search not specified
