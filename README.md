# base_bloc

Implement BLoC easier

## Install
```yaml
base_bloc:
    git:
      url: https://github.com/trgcuong/base_bloc.git
      ref: 0.0.1
```

```dart
import 'package:base_bloc/base_bloc.dart';
```

## Example
```dart
class LoginScreenState extends BaseBlocState<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:  AppBar(), body: BaseBlocBuilder<LoginState>(bloc, _buildBody));
  }

  @override
  BaseBloc createBloc() {
    return LoginBloc();
  }

  Widget _buildBody(BuildContext context, LoginState state) {
    if (state.isLoading) {
      return Container(child: CircularProgressIndicator(),alignment: Alignment.center,);
    }
    if (state.error != null) {
      return Container(child: Text(state.error.toString()),);
    }
    if (state.loginStatus == "readyLogin") {
      return _buildLogoutForm();
    }

    return _buildLoginForm();
  }
 
  Widget _buildLoginForm() {
      return Container(
          alignment: Alignment.center,
          child: RaisedButton(child: Text("Login"), onPressed: _onClickLogin,));
    }
  
    Widget _buildLogoutForm() {
      return Container(
          alignment: Alignment.center,
          child: RaisedButton(child: Text("Logout"), onPressed: _onClickLogout,));
    }
  
    void _onClickLogin() {
     dispatch(SubmitLoginEvent());
    }
  
    void _onClickLogout() {
      dispatch(SubmitLogoutEvent());
    }
}
```

