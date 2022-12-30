// ignore_for_file: prefer_const_constructors

import 'package:delybox/constants.dart';
import 'package:flutter/material.dart';

class BodyContainer extends StatelessWidget {
  final Widget child;

  const BodyContainer({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding * 2),
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1360),
          child: child,
        ),
      ),
    );
  }
}
