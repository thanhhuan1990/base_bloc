
abstract class BaseEvent {}

class ErrorEvent extends BaseEvent {
  var error;

  ErrorEvent(this.error);
  @override
  String toString() => 'Error: ${error.toString()}';
}

class InitialEvent {

  @override
  String toString() => 'InitialEvent';
}