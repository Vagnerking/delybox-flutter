// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:delybox/components/header_text_view.dart';
import 'package:delybox/constants.dart';
import 'package:delybox/providers/auth_provider.dart';
import 'package:delybox/views/body_container/body_container.dart';
import 'package:delybox/views/dashboard/components/dashboard_cards.dart';
import 'package:delybox/views/dashboard/components/input_calendar.dart';
import 'package:delybox/views/body_container/components/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/dashboard_stats_weekday.dart';

class DashboardView extends StatefulWidget {
  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, authProvider, child) {
      return SafeArea(
        child: Scaffold(
          drawer: MainDrawer(),
          appBar: AppBar(
            toolbarHeight: 65,
            backgroundColor: primaryBgColor,
            elevation: 5,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Username'),
                    CircleAvatar(
                      radius: 30, // Image radius
                      backgroundImage:
                          Image.asset('assets/images/user.jpg').image,
                    ),
                  ],
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: BodyContainer(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                  HeaderTextView(text: 'Dashboard'),
                  InputCalendar(),
                  DashboardCards(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      'View your company statistics',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF9F9F9F)),
                    ),
                  ),
                  StatsWeekDay()
                ])),
          ),
        ),
      );
    });
  }
}
