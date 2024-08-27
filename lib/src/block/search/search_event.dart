part of 'search_bloc.dart';

@immutable
sealed class SearchEvent {}
final class SearchStarted extends SearchEvent{
   final SwichStatus status;
  SearchStarted(this.status);
}//when start search
final class SearchUserButtonPressed{

}//when pressed user button
final class SearchMangaButtonPressed{

}//when pressed manga button
final class SearchAnimeButtonPressed{

}//when pressed anime button
final class SearchUniversalStarted{

}//when type  of search not specified
