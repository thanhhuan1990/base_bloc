
abstract class BaseEvent {}

class ErrorEvent extends BaseEvent {
  var error;

  ErrorEvent(this.error);
  @override
  String toString() => 'Error: ${error.toString()}';
}

class InitialEvent extends BaseEvent {

  @override
  String toString() => 'InitialEvent';
}