import 'package:base_bloc/src/base_event.dart';
import 'package:base_bloc/src/base_state.dart';
import 'package:base_bloc/src/flutter_base_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBlocBuilder<S extends BaseState> extends BlocBuilder<BaseEvent, S> {
   BaseBlocBuilder(BaseBloc<S> bloc, BlocWidgetBuilder<S> builder)
      : super(bloc: bloc, builder: builder);
}