// ignore_for_file: prefer_const_constructors

import 'dart:ui';

class DayOfWeek {
  String x;
  double? y;
  Color color;

  DayOfWeek(this.x, this.y, this.color);
}

dynamic getColumnData() {
  List<DayOfWeek> columnData = <DayOfWeek>[
    DayOfWeek('Seg', 40, Color(0xFFFFEF5F)),
    DayOfWeek('Ter', 25, Color(0xFFFF5A5A)),
    DayOfWeek('Qua', 15, Color(0xFFB1FFF1)),
    DayOfWeek('Qui', 50, Color(0xFFACAAFF)),
    DayOfWeek('Sex', 60, Color(0xFFFFA9F1)),
    DayOfWeek('Sab', 70, Color(0xFF98FFA2)),
    DayOfWeek('Dom', 90, Color(0xFF9ACFFF)),
  ];

  return columnData;
}
