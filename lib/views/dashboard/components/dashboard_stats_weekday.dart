// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:delybox/components/header_text_view.dart';
import 'package:delybox/constants.dart';
import 'package:delybox/models/stats_day_of_week.dart';
import 'package:delybox/components/card_white.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsWeekDay extends StatelessWidget {
  const StatsWeekDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardWhite(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HeaderTextView(text: 'Stats - Week day'),
          SizedBox(
            height: defaultPadding,
          ),
          Flexible(
            flex: 1,
            child: SfCartesianChart(
              legend: Legend(overflowMode: LegendItemOverflowMode.none),
              primaryXAxis: CategoryAxis(
                title: AxisTitle(
                    text: 'Week Days',
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
              primaryYAxis: CategoryAxis(isVisible: false),
              series: <CartesianSeries>[
                ColumnSeries<DayOfWeek, String>(
                  dataLabelSettings: DataLabelSettings(
                      isVisible: true,
                      alignment: ChartAlignment.center,
                      labelAlignment: ChartDataLabelAlignment.middle,
                      textStyle: TextStyle(color: Colors.white)),
                  xAxisName: 'Days',
                  animationDelay: 200,
                  dataSource: getColumnData(),
                  xValueMapper: (DayOfWeek dow, _) => dow.x,
                  yValueMapper: (DayOfWeek dow, _) => dow.y,
                  pointColorMapper: (DayOfWeek dow, _) => dow.color,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
