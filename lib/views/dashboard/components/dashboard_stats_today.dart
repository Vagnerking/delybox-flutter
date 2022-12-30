// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:delybox/components/header_text_view.dart';
import 'package:delybox/constants.dart';
import 'package:delybox/models/stats_today.dart';
import 'package:delybox/responsive.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsToday extends StatelessWidget {
  late TooltipBehavior _tooltipBehavior;

  StatsToday({Key? key}) : super(key: key) {
    _tooltipBehavior = TooltipBehavior(enable: true);
  }

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
            HeaderTextView(text: 'Stats - Today'),
            SizedBox(
              height: defaultPadding,
            ),
            Flexible(
              child: SfCircularChart(
                legend: !Responsive.isMiniMobile(context)
                    ? Legend(
                        overflowMode: LegendItemOverflowMode.scroll,
                        toggleSeriesVisibility: true,
                        isVisible: true,
                        alignment: ChartAlignment.center,
                        position: LegendPosition.left)
                    : null,
                tooltipBehavior: _tooltipBehavior,
                series: <CircularSeries>[
                  PieSeries<StatsTodayModel, String>(
                    enableTooltip: true,
                    animationDelay: 200,
                    dataSource: getColumnData(),
                    dataLabelSettings: DataLabelSettings(
                      isVisible: true,
                      showZeroValue: false,
                      overflowMode: OverflowMode.shift,
                    ),
                    explode: true,
                    explodeOffset: '1',
                    explodeAll: true,
                    strokeColor: Colors.white,
                    strokeWidth: 4,
                    radius: Responsive.isTablet(context) ? '70' : '100',
                    legendIconType: LegendIconType.rectangle,
                    xValueMapper: (StatsTodayModel dow, _) => dow.x,
                    yValueMapper: (StatsTodayModel dow, _) => dow.y,
                    dataLabelMapper: (StatsTodayModel dow, _) => "${dow.y} %",
                    pointColorMapper: (StatsTodayModel dow, _) => dow.color,
                  ),
                ],
              ),
            ),
            Text(
              'Delivery Status',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
