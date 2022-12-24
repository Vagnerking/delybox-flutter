// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../constants.dart';

class CompaniesFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding * 2),
      constraints: BoxConstraints(maxHeight: 150, maxWidth: 740),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryBgColor),
                      onPressed: () {},
                      child: Text(
                        textAlign: TextAlign.center,
                        'Manage Companies',
                      )),
                ),
              )
            ],
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Flexible(
                  flex: 1,
                  child: Text(
                    maxLines: 3,
                    'To manage your companies go to the control panel through the browser.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
