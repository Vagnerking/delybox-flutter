import 'package:flutter/cupertino.dart';

class AuthProvider with ChangeNotifier {
  LoginStatus loginStatus = LoginStatus.none;

  LoginStatus get loginState => loginStatus;
  set setLoginState(LoginStatus status) {
    loginStatus = status;
    notifyListeners();
  }
}

enum LoginStatus { none, companies, logged }
