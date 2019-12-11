import 'package:base_bloc/base_bloc.dart';
import 'package:flutter/material.dart';

/// Created by Huan.Huynh on 2019-10-22.
///
/// Copyright © 2019 Huan.Huynh. All rights reserved.
abstract class BaseBlocState<W extends StatefulWidget> extends State<W> {

  BaseBloc bloc;

  BaseBloc createBloc();

  @override
  void initState() {
    super.initState();
    bloc = createBloc();
  }

  void add(dynamic event) {
    bloc?.add(event);
  }

}