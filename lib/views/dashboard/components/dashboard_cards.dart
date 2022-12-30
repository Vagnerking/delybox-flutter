// ignore_for_file: prefer_const_constructors

import 'package:delybox/constants.dart';
import 'package:delybox/responsive.dart';
import 'package:flutter/material.dart';

import 'cards_examples.dart';
import 'dashboard_card.dart';

class DashboardCards extends StatelessWidget {
  const DashboardCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultPadding),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Responsive.isMiniMobile(context)
                  ? 1
                  : Responsive.isMobile(context)
                      ? 2
                      : 4,
              crossAxisSpacing: defaultPadding,
              mainAxisSpacing: defaultPadding,
              mainAxisExtent: 165,
              childAspectRatio: 1),
          itemBuilder: ((context, index) {
            CardExample cardExample = CardExample.cards[index];
            return DashboardCard(
                amount: cardExample.amount,
                titleCard: cardExample.titleCard,
                cardColor: cardExample.cardColor,
                iconColor: cardExample.iconColor,
                icon: cardExample.icon);
          })),
    );
  }
}
