import 'package:base_bloc/base_event.dart';
import 'package:base_bloc/base_state.dart';
import 'package:base_bloc/flutter_base_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBlocBuilder extends BlocBuilder<BaseEvent, BaseState> {
  const BaseBlocBuilder(BaseBloc bloc, BlocWidgetBuilder<BaseState> builder)
      : super(bloc: bloc, builder: builder);
}