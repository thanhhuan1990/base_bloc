import 'package:bloc/bloc.dart';
import 'package:base_bloc/src/base_event.dart';
import 'package:base_bloc/src/base_state.dart';

abstract class BaseBloc<dy, S extends BaseState> extends Bloc<BaseEvent, S> {

  @override
  void onError(Object error, StackTrace stacktrace) {
    super.onError(error, stacktrace);
    print(error);
    add(ErrorEvent(error));
  }
}
