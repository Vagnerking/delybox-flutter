// ignore_for_file: prefer_const_constructors

import 'package:delybox/constants.dart';
import 'package:flutter/material.dart';

class CardWhite extends StatelessWidget {
  final Widget widget;

  const CardWhite({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: widget,
      ),
    );
  }
}
