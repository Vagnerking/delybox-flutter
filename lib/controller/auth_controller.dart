import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  late LoginStatus loginStatus;

  static AuthController instance = AuthController();

  AuthController() {
    loginStatus = LoginStatus.none;
  }

  void loginScreen() {
    loginStatus = LoginStatus.none;
    notifyListeners();
  }

  void companiesScreen() {
    loginStatus = LoginStatus.companies;
    notifyListeners();
  }

  void loggedScreen() {
    loginStatus = LoginStatus.logged;
    notifyListeners();
  }
}

enum LoginStatus { none, companies, logged }
