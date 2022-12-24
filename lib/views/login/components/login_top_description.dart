// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';

class LoginTopDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      constraints: BoxConstraints(minWidth: 280, maxWidth: 400),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Delybox',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  'Sign in now!',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w300,
                      color: Colors.black54,
                      fontSize: 18,
                      height: 1.1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
