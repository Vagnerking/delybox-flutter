import 'package:delybox/controller/auth_controller.dart';
import 'package:flutter/material.dart';

class CompanyController extends ChangeNotifier {
  late String companyName, imageSrc;
  late int companyId;

  AuthController authController = AuthController.instance;
  static CompanyController instance = CompanyController();

  CompanyController() {
    companyName = "Company not found!";
    imageSrc = "";
    companyId = -1;
  }

  void companyLogin(String companyName, String imageSrc, int companyId) {
    this.companyName = companyName;
    this.imageSrc = imageSrc;
    this.companyId = companyId;
  }
}
