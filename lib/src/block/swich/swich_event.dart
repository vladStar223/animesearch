part of 'swich_bloc.dart';


abstract class  SwichEvent extends Equatable {
}

 final class SwichUserPressed extends SwichEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];

 }
final class SwichMangaPressed extends SwichEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
final class SwichAnimePressed extends SwichEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
final class SwichTextInput extends SwichEvent{
 SwichTextInput(this.text);
 String text;

  @override
  // TODO: implement props
  List<Object?> get props => [text];
}