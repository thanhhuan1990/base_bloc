import 'package:equatable/equatable.dart';

abstract class BaseState extends Equatable {
  BaseState([List props = const []]) : super(props);
}
