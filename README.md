# base_bloc

Applying BLoC easier.
Base on [flutter_bloc](https://pub.dartlang.org/packages/flutter_bloc#-readme-tab-). So you also install it.

## Install
```yaml
base_bloc:
    git:
      url: https://github.com/trgcuong/base_bloc.git
      ref: 0.0.2
```

```dart
import 'package:base_bloc/base_bloc.dart';
```

## Example
```Widget
class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginWidgetState();
}

class LoginWidgetState extends BaseBlocState<LoginWidget> {

  BuildContext _context;

  @override
  Widget build(BuildContext context) =>
      BaseBlocBuilder<LoginState>(bloc, _buildBody);

  @override
  BaseBloc createBloc() => LoginBloc();

  Widget _buildBody(BuildContext context, LoginState state) {
    return SafeArea(
        bottom: false, top: false,
        child: Scaffold(
          body: Builder(builder: (BuildContext context) {
            _context = context;
            return Container(
              child: Center(
                child: Text("Login Widget"),
              ),
            );
          }),
        )
    );
  }

}
```
```State
@immutable
class LoginState extends BaseState {
  final error;
  final bool isLoading;

  LoginState({
    this.isLoading = false,
    this.error,
  });

  LoginState copyWith({
    bool isLoading,
    var error,
  }) =>
      LoginState(
        isLoading: isLoading ?? false,
        error: error,
      );
}
```
```Event
@immutable
class LoginEvent extends BaseEvent {}
```
```Bloc
class LoginBloc extends BaseBloc<LoginState> {

  @override
  LoginState get initialState => LoginState();

  @override
  Stream<LoginState> mapEventToState(BaseEvent event) async* {
    if (event is InitialEvent) {

      /// Implement InitialEvent

    } else if (event is ErrorEvent) {

      /// Implement ErrorEvent
      yield state.copyWith(error: event.error);
    }
  }
}
```

