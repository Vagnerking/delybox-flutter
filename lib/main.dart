// ignore_for_file: use_key_in_widget_constructors

import 'package:delybox/views/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delybox',
      home: LoginView(),
    );
  }
}
