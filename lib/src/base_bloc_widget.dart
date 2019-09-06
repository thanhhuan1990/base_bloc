import 'package:base_bloc/base_bloc.dart';
import 'package:flutter_web/material.dart';

abstract class BaseBlocWidget extends StatefulWidget {
}

abstract class BaseBlocState<W extends StatefulWidget> extends State<W> {

  BaseBloc bloc;

  bool get needDisposeBloc => true;

  BaseBloc createBloc();

  @override
  void initState() {
    super.initState();
    bloc = createBloc();
  }

  @override
  void dispose() {
    super.dispose();
    if (needDisposeBloc) {
      bloc?.dispose();
    }
  }

  void dispatch(BaseEvent event) {
    bloc?.dispatch(event);
  }

}