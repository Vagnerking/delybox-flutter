// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:delybox/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputCalendar extends StatefulWidget {
  @override
  State<InputCalendar> createState() => _InputCalendarState();
}

class _InputCalendarState extends State<InputCalendar> {
  String dataSelecionada = DateFormat('dd/MM/yyyy').format(DateTime.now());

  void openCalendarDatePicker() {
    showDatePicker(
      context: context,
      firstDate: DateTime(2015),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
    ).then((value) {
      setState(() {
        DateFormat formatter = DateFormat('dd/MM/yyyy');
        dataSelecionada = formatter.format(value!);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
            width: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select date',
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: Container(
                      height: 45,
                      padding:
                          EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border:
                              Border.all(width: 2, color: defaultBorderColor)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(dataSelecionada),
                            Icon(
                              Icons.edit_calendar,
                            ),
                          ]),
                    ),
                    onTap: () => openCalendarDatePicker(),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
