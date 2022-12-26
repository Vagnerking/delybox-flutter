import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  late LoginStatus loginStatus;
  static AuthController instance = AuthController();

  AuthController() {
    loginStatus = LoginStatus.none;
  }

  void loginScreen(BuildContext context) {
    loginStatus = LoginStatus.none;
    Navigator.of(context).pushNamed('/');
  }

  void companiesScreen(BuildContext context) {
    loginStatus = LoginStatus.companies;
    Navigator.of(context).pushNamed('/companies');
  }

  void loggedScreen(BuildContext context) {
    loginStatus = LoginStatus.logged;
    Navigator.of(context).pushNamed('/dashboard');
  }
}

enum LoginStatus { none, companies, logged }
