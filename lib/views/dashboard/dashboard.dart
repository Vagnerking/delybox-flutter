// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:delybox/components/header_text_view.dart';
import 'package:delybox/constants.dart';
import 'package:delybox/responsive.dart';
import 'package:delybox/views/body_container/body_container.dart';
import 'package:delybox/views/dashboard/components/cards_examples.dart';
import 'package:delybox/views/dashboard/components/dashboard_card.dart';
import 'package:delybox/views/dashboard/components/input_calendar.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return BodyContainer(
        child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderTextView(text: 'Dashboard'),
        ],
      ),
      InputCalendar(),
      Container(
        margin: EdgeInsets.symmetric(vertical: defaultPadding),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
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
      ),
      Text('oi')
    ]));
  }
}
