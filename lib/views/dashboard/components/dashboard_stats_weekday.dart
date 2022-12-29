// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:delybox/components/header_text_view.dart';
import 'package:delybox/constants.dart';
import 'package:delybox/models/stats_day_of_week.dart';
import 'package:delybox/responsive.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsWeekDay extends StatelessWidget {
  const StatsWeekDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderTextView(text: 'Stats - Week day'),
            SizedBox(
              height: defaultPadding,
            ),
            Flexible(
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                primaryYAxis: CategoryAxis(isVisible: false),
                series: <CartesianSeries>[
                  ColumnSeries<DayOfWeek, String>(
                      dataLabelSettings: DataLabelSettings(
                        isVisible: true,
                        alignment: ChartAlignment.center,
                        labelAlignment: ChartDataLabelAlignment.middle,
                      ),
                      xAxisName: 'Days',
                      animationDelay: 200,
                      dataSource: getColumnData(),
                      xValueMapper: (DayOfWeek dow, _) => dow.x,
                      yValueMapper: (DayOfWeek dow, _) => dow.y,
                      pointColorMapper: (DayOfWeek dow, _) => dow.color),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
