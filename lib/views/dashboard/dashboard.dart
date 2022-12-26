// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:delybox/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Dashboard extends StatelessWidget {
  AuthController authController = AuthController.instance;

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (authController.loginStatus != LoginStatus.logged) {
        Navigator.of(context).pushNamed('/');
      }
    });

    return Container();
  }
}
