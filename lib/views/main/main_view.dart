// ignore_for_file: prefer_const_constructors, must_be_immutable, avoid_print, use_key_in_widget_constructors

import 'package:delybox/controller/company_controller.dart';
import 'package:delybox/views/main/components/main_drawer.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../controller/auth_controller.dart';

class MainView extends StatefulWidget {
  final Widget page;
  AuthController authController = AuthController.instance;

  MainView({required this.page});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  AuthController authController = AuthController.instance;
  CompanyController companyController = CompanyController.instance;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.authController,
      builder: (context, child) {
        return Scaffold(
          drawer: authController.loginStatus == LoginStatus.logged
              ? MainDrawer()
              : null,
          appBar: (widget.authController.loginStatus == LoginStatus.companies ||
                  widget.authController.loginStatus == LoginStatus.logged)
              ? AppBar(
                  toolbarHeight: 65,
                  backgroundColor: primaryBgColor,
                  elevation: 5,
                  leading:
                      widget.authController.loginStatus == LoginStatus.companies
                          ? IconButton(
                              onPressed: () {
                                print('clicked on logout');
                                authController.loginScreen(context);
                              },
                              icon: Icon(Icons.logout))
                          : null,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Username'),
                          CircleAvatar(
                            radius: 30, // Image radius
                            backgroundImage:
                                Image.asset('assets/images/user.jpg').image,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : null,
          body: SafeArea(child: widget.page),
        );
      },
    );
  }
}
