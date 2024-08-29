part of 'swich_bloc.dart';


@immutable
enum  SwichStatus { initial, user, anime, manga }
final class SwichState  extends Equatable{
  SwichState({this.status = SwichStatus.initial,this.input=false});
  SwichStatus status;
  bool input;



  SwichState copyWith({
     SwichStatus? status,
      bool? input,
  }){
    return SwichState(
      input: input??this.input,
      status: status??this.status,
    );
    }

  @override
  // TODO: implement props
  List<Object?> get props => [input,status];
}//status for button
