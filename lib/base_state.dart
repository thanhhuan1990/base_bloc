import 'package:equatable/equatable.dart';

abstract class BaseState extends Equatable {
  BaseState([List props = const []]) : super(props);
}

class ErrorState extends BaseState {
  var error;

  ErrorState(this.error) : super(error);
}
