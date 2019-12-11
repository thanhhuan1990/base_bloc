import 'package:bloc/bloc.dart';
import 'package:base_bloc/src/base_event.dart';
import 'package:base_bloc/src/base_state.dart';

/// Created by Huan.Huynh on 2019-10-22.
///
/// Copyright © 2019 Huan.Huynh. All rights reserved.
abstract class BaseBloc<S extends BaseState> extends Bloc<BaseEvent, S> {

  @override
  void onError(Object error, StackTrace stacktrace) {
    super.onError(error, stacktrace);
    print(error);
    add(ErrorEvent(error));
  }
}
