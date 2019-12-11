
/// Created by Huan.Huynh on 2019-10-22.
///
/// Copyright © 2019 Huan.Huynh. All rights reserved.
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