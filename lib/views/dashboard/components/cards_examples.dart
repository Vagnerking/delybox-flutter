// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardExample {
  final int amount;
  final String titleCard;
  final Color cardColor, iconColor;
  final IconData icon;

  CardExample(
      this.amount, this.titleCard, this.cardColor, this.iconColor, this.icon);

  static List<CardExample> cards = [
    CardExample(30, 'Sends', Color(0xFF46A6FF), Color(0xFF3883C8), Icons.send),
    CardExample(27, 'Delivered', Color(0xFFFF7E46), Color(0xFFC1622C),
        Icons.delivery_dining_rounded),
    CardExample(03, 'On Route', Color(0xFF9746FF), Color(0xFF652CC1),
        Icons.route_rounded),
    CardExample(02, 'Problems', Color(0xFFFF465C), Color(0xFFC12C2C),
        Icons.report_problem)
  ];
}
