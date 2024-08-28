part of 'search_bloc.dart';

@immutable
sealed class SearchEvent extends Equatable {}
final class SearchStarted extends SearchEvent{
   final SwichStatus status;
   String text;
  SearchStarted(this.status,this.text);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}//when start search
final class SearchUserButtonGet extends SearchEvent{
  String text;
  SearchUserButtonGet(this.text);
  @override
  // TODO: implement props
  List<Object?> get props => [text];

}//when pressed user button
final class SearchMangaButtonGet extends SearchEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}//when pressed manga button
final class SearchAnimeButtonGet extends SearchEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}//when pressed anime button
final class SearchUniversalStarted extends SearchEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}//when type  of search not specified
