import 'package:base_bloc/src/base_event.dart';
import 'package:base_bloc/src/base_state.dart';
import 'package:base_bloc/src/flutter_base_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBlocBuilder<B extends BaseBloc<BaseEvent, S>, S extends BaseState> extends BlocBuilder<B, S> {
  BaseBlocBuilder(BaseBloc<BaseEvent, S> bloc, BlocWidgetBuilder<S> builder)
    : super(bloc: bloc, builder: builder);
}