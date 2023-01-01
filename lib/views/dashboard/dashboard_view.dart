import 'package:delybox/components/header_text_view.dart';
import 'package:delybox/constants.dart';
import 'package:delybox/providers/auth_provider.dart';
import 'package:delybox/responsive.dart';
import 'package:delybox/views/body_container/body_container.dart';
import 'package:delybox/views/dashboard/components/dashboard_cards.dart';
import 'package:delybox/views/dashboard/components/dashboard_ranking.dart';
import 'package:delybox/views/dashboard/components/input_calendar.dart';
import 'package:delybox/views/body_container/components/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:provider/provider.dart';

import 'components/dashboard_stats_today.dart';
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
        child: DefaultTabController(
          initialIndex: 1,
          length: 3,
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
            body: TabBarView(
              children: [Dashboard(), Dashboard(), Dashboard()],
            ),
            bottomNavigationBar: Material(
              color: primaryBgColor,
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.send),
                  ),
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.view_list),
                  ),
                ],
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white30,
                indicatorColor: Colors.white,
              ),
            ),
          ),
        ),
      );
    });
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BodyContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderTextView(
              text: 'Dashboard',
              useBottomPadding: true,
              useDivider: true,
            ),
            InputCalendar(),
            DashboardCards(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: Text(
                '- View your company statistics -',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF9F9F9F)),
              ),
            ),
            LayoutGrid(
              columnSizes: [
                Responsive.isMobile(context) ? 1.fr : 2.fr,
                if (!Responsive.isMobile(context)) 1.fr
              ],
              rowSizes: [auto, auto],
              rowGap: defaultPadding,
              columnGap: defaultPadding,
              children: [StatsWeekDay(), StatsToday()],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: Text(
                '- View your company ranking -',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF9F9F9F)),
              ),
            ),
            DashboardRanking(),
          ],
        ),
      ),
    );
  }
}