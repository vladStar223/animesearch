part of 'search_bloc.dart';

@immutable
sealed class SearchEvent extends Equatable {}
final class SearchStarted extends SearchEvent{
   final SwichStatus status;
  SearchStarted(this.status);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}//when start search
final class SearchUserButtonGet extends SearchEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}//when pressed user button
final class SearchMangaButtonGet extends SearchEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}//when pressed manga button
final class SearchAnimeButtonGet extends SearchEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}//when pressed anime button
final class SearchUniversalStarted extends SearchEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}//when type  of search not specified
