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
    CardExample(23, 'Entregas Efetuadas', Color(0xFF46A6FF), Color(0xFF2C7AC1),
        Icons.motorcycle),
    CardExample(
        23, 'Entregas', Color(0xFF46A6FF), Color(0xFF2C7AC1), Icons.motorcycle),
    CardExample(
        23, 'Entregas', Color(0xFF46A6FF), Color(0xFF2C7AC1), Icons.motorcycle),
    CardExample(
        23, 'Entregas', Color(0xFF46A6FF), Color(0xFF2C7AC1), Icons.motorcycle)
  ];
}
