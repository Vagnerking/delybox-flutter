// ignore_for_file: prefer_const_constructors, avoid_print, use_key_in_widget_constructors, must_be_immutable

import 'package:delybox/controller/auth_controller.dart';
import 'package:delybox/controller/company_controller.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class Company extends StatelessWidget {
  CompanyController companyController = CompanyController.instance;
  AuthController authController = AuthController.instance;

  final String logoImgSrc, companyName;
  final int companyId;

  Company(
      {required this.logoImgSrc,
      required this.companyName,
      required this.companyId});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: secondaryBgColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: Responsive.isMobile(context) ? 35 : 40, // Image radius
            backgroundImage: Image.asset(logoImgSrc).image,
          ),
          SizedBox(width: defaultPadding),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Text(
              companyName,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontSize: 20,
                  color: companyTextColor,
                  fontWeight: FontWeight.w500),
            ),
          ),
          IconButton(
              iconSize: 40,
              onPressed: () {
                print('Trying login on company $companyName');
                companyController.companyLogin(
                    companyName, logoImgSrc, companyId);
                authController.loggedScreen(context);
              },
              icon: Icon(Icons.login))
        ],
      ),
    );
  }
}
