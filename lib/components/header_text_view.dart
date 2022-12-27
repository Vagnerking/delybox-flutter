// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:delybox/constants.dart';
import 'package:flutter/material.dart';

class HeaderTextView extends StatelessWidget {
  final String text;

  const HeaderTextView({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: defaultHeaderFontSize,
          color: defaultTextColor,
          fontWeight: FontWeight.w600),
    );
  }
}
