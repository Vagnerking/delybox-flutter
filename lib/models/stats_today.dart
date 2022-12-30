// ignore_for_file: prefer_const_constructors

import 'dart:ui';

class StatsTodayModel {
  String x;
  int? y;
  Color color;

  StatsTodayModel(this.x, this.y, this.color);
}

dynamic getColumnData() {
  List<StatsTodayModel> columnData = <StatsTodayModel>[
    StatsTodayModel('Delivered', 87, Color(0xFF46A6FF)),
    StatsTodayModel('On Route', 10, Color(0xFF9746FF)),
    StatsTodayModel('Problem', 3, Color(0xFFFF465C)),
  ];

  return columnData;
}
