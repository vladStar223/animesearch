part of 'swich_bloc.dart';


@immutable
enum  SwichStatus { initial, user, anime, manga }
final class SwichState  extends Equatable{
  SwichState({this.status = SwichStatus.initial,this.input=false,this.value=''});
  SwichStatus status;
  bool input;
  String value;


  SwichState copyWith({
     SwichStatus? status,
      bool? input,
    String? value,
  }){
    return SwichState(
      input: input??this.input,
      status: status??this.status,
      value:value??this.value,
    );
    }

  @override
  // TODO: implement props
  List<Object?> get props => [input,status,value];
}//status for button
