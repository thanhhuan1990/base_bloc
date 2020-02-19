
/// Created by Huan.Huynh on 2019-10-22.
///
/// Copyright © 2019 Huan.Huynh. All rights reserved.
abstract class BaseEvent {
  String eventName();
}

class ErrorEvent extends BaseEvent {
  var error;

  ErrorEvent(this.error);
  @override

  String toString() => 'Error: ${error.toString()}';

  @override
  String eventName() => "ErrorEvent";
}

class InitialEvent extends BaseEvent {

  @override
  String toString() => 'InitialEvent';

  @override
  String eventName() => "InitialEvent";
}