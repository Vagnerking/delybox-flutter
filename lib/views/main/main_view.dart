// ignore_for_file: prefer_const_constructors, must_be_immutable, avoid_print, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:delybox/controller/company_controller.dart';
import 'package:delybox/providers/auth_provider.dart';
import 'package:delybox/providers/company_provider.dart';
import 'package:delybox/views/main/components/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';

class MainView extends StatefulWidget {
  final Widget page;

  MainView({required this.page});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, authProvider, child) {
      return Scaffold(
        drawer: authProvider.loginStatus == LoginStatus.logged
            ? MainDrawer()
            : null,
        appBar: (authProvider.loginStatus == LoginStatus.companies ||
                authProvider.loginStatus == LoginStatus.logged)
            ? AppBar(
                toolbarHeight: 65,
                backgroundColor: primaryBgColor,
                elevation: 5,
                leading: authProvider.loginStatus == LoginStatus.companies
                    ? IconButton(
                        onPressed: () {
                          print('clicked on logout');
                          authProvider.loginStatus = LoginStatus.none;
                          Navigator.of(context).pushNamed('/');
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
    });
  }
}
