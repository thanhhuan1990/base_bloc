import 'package:base_bloc/base_event.dart';
import 'package:base_bloc/base_state.dart';
import 'package:bloc/bloc.dart';

abstract class BaseBloc extends Bloc<BaseEvent, BaseState> {

  @override
  Stream<BaseState> mapEventToState(BaseState currentState, BaseEvent event) async* {
    if( event is ErrorEvent){
      yield ErrorState(event.error);
    }
  }


  @override
  void onError(Object error, StackTrace stacktrace) {
    super.onError(error, stacktrace);
    dispatch(ErrorEvent(error));
  }
}
