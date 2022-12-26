// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:delybox/constants.dart';
import 'package:delybox/controller/auth_controller.dart';
import 'package:delybox/controller/company_controller.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  AuthController authController = AuthController.instance;
  CompanyController companyController = CompanyController.instance;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: primaryBgColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: CircleAvatar(
                    backgroundImage:
                        Image.asset(companyController.imageSrc).image,
                  ),
                ),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                Text(
                  companyController.companyName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: const Text(
                    'Dashboard',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/dashboard');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.view_list),
                  title: const Text(
                    'Orders',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/orders');
                  },
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 0.1,
          ),
          ListTile(
            leading: Icon(Icons.business),
            title: const Text(
              'Companies',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              authController.companiesScreen(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text(
              'Logout',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              authController.loginScreen(context);
            },
          ),
          SizedBox(
            height: defaultPadding,
          )
        ],
      ),
    );
  }
}
