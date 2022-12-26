import 'package:flutter/cupertino.dart';

class CompanyProvider with ChangeNotifier {
  String companyName = 'Company not found!';
  String imageSrc = '';
  int companyId = -1;

  String get getCompanyName => companyName;
  set setCompanyName(String companyName) {
    this.companyName = companyName;
    notifyListeners();
  }

  String get getImageSrc => imageSrc;
  set setImageSrc(String imageSrc) {
    this.imageSrc = imageSrc;
    notifyListeners();
  }

  int get getCompanyId => companyId;
  set setCompanyId(int companyId) {
    this.companyId = companyId;
    notifyListeners();
  }
}
