import 'package:base_bloc/base_bloc.dart';
import 'package:flutter/material.dart';

abstract class BaseBlocWidget extends StatefulWidget {

}

abstract class BaseBlocState<W extends StatefulWidget> extends State<W>{

  BaseBloc bloc;


  BaseBloc createBloc();

  @override
  void initState() {
    super.initState();
    bloc = createBloc();

  }

  @override
  void dispose() {
    super.dispose();
    bloc.dispose();
  }

  void dispatch(BaseEvent event){
    bloc?.dispatch(event);
  }


}