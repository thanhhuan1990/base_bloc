import 'package:base_bloc/src/base_state.dart';
import 'package:base_bloc/src/flutter_base_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Created by Huan.Huynh on 2019-10-22.
///
/// Copyright © 2019 teqnological. All rights reserved.

class BaseBlocBuilder<S extends BaseState> extends BlocBuilder<BaseBloc<S>, S> {
   BaseBlocBuilder(BaseBloc<S> bloc, BlocWidgetBuilder<S> builder)
      : super(bloc: bloc, builder: builder);
}