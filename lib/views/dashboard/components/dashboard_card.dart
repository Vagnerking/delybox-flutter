// ignore_for_file: prefer_const_constructors

import 'package:delybox/constants.dart';
import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final int amount;
  final String titleCard;
  final Color cardColor, iconColor;
  final IconData icon;

  const DashboardCard(
      {Key? key,
      required this.amount,
      required this.titleCard,
      required this.cardColor,
      required this.iconColor,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: cardColor.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(amount.toString(),
                style: TextStyle(
                    fontSize: defaultCardFontSizeAmount,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            Flexible(
              child: Text(titleCard,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: defaultCardFontSizeTitle,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  icon,
                  color: iconColor,
                  size: 60,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
