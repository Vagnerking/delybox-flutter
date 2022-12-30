// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:delybox/constants.dart';
import 'package:flutter/material.dart';

class HeaderTextView extends StatelessWidget {
  final String text;
  final bool useBottomPadding;
  final bool useDivider;

  const HeaderTextView(
      {Key? key,
      required this.text,
      this.useBottomPadding = false,
      this.useDivider = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: defaultHeaderFontSize,
              color: defaultTextColor,
              fontWeight: FontWeight.w600),
        ),
        if (useDivider)
          Divider(
            color: Colors.black,
            height: 6,
            thickness: 0.1,
          ),
        SizedBox(
          height: useBottomPadding ? defaultPadding : 0,
        ),
      ],
    );
  }
}
