// ignore_for_file: prefer_const_constructors, must_be_immutable, avoid_print

import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../controller/auth_controller.dart';

class MainView extends StatefulWidget {
  final Widget page;
  AuthController authController = AuthController.instance;

  MainView({super.key, required this.page});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.authController,
      builder: (context, child) {
        return Scaffold(
          appBar: (widget.authController.loginStatus ==
                      LoginStatus.companies) ||
                  (widget.authController.loginStatus == LoginStatus.logged)
              ? AppBar(
                  toolbarHeight: 65,
                  backgroundColor: primaryBgColor,
                  elevation: 5,
                  leading:
                      widget.authController.loginStatus == LoginStatus.companies
                          ? IconButton(
                              onPressed: () {
                                print('clicked on logout');
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
      },
    );
  }
}
