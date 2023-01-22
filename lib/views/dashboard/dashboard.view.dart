import 'package:delybox/components/header_text_view.dart';
import 'package:delybox/constants.dart';
import 'package:delybox/responsive.dart';
import 'package:delybox/views/body_container/body_container.widget.dart';
import 'package:delybox/views/dashboard/components/dashboard_cards.dart';
import 'package:delybox/views/dashboard/components/dashboard_ranking.dart';
import 'package:delybox/views/dashboard/components/input_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

import 'components/dashboard_stats_today.dart';
import 'components/dashboard_stats_weekday.dart';

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
