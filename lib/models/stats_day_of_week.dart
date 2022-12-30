// ignore_for_file: prefer_const_constructors

import 'dart:ui';

class DayOfWeek {
  String x;
  int? y;
  Color color;

  DayOfWeek(this.x, this.y, this.color);
}

dynamic getColumnData() {
  List<DayOfWeek> columnData = <DayOfWeek>[
    DayOfWeek('Mon', 40, Color(0xFF46A6FF)),
    DayOfWeek('Tue', 25, Color(0xFFFF7E46)),
    DayOfWeek('Wed', 15, Color(0xFF9746FF)),
    DayOfWeek('Thu', 50, Color(0xFFFF465C)),
    DayOfWeek('Fri', 60, Color(0xFF73BCFF)),
    DayOfWeek('Sat', 70, Color(0xFFFFA47C)),
    DayOfWeek('Sun', 90, Color(0xFFBB85FF)),
  ];

  return columnData;
}
