import 'package:equatable/equatable.dart';

abstract class BaseEvent extends Equatable {
  BaseEvent([List props = const []]) : super(props);
}

class ErrorEvent extends BaseEvent {
  var error;

  ErrorEvent(this.error);
  @override
  String toString() => 'Error: ${error.toString()}';
}