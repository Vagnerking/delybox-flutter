import 'dart:ui';

import 'package:data_table_2/data_table_2.dart';
import 'package:delybox/constants.dart';
import 'package:delybox/models/ranking_deliveryman.dart';
import 'package:delybox/responsive.dart';
import 'package:delybox/components/card_white.dart';
import 'package:flutter/material.dart';

class DashboardRanking extends StatelessWidget {
  const DashboardRanking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardWhite(
        widget: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: double.infinity,
          height: 300,
          child: DataTable2(
            columnSpacing: defaultPadding,
            dataRowHeight: 70,
            smRatio: Responsive.isMiniMobile(context)
                ? 6
                : Responsive.isMobile(context)
                    ? 4
                    : 1,
            lmRatio: 15,
            horizontalMargin: defaultPadding,
            columns: [
              DataColumn2(
                label: Text(
                  '#',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                size: ColumnSize.S,
              ),
              DataColumn2(
                label: Text(
                  'Deliveryman',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                size: ColumnSize.L,
              ),
              DataColumn2(
                label: Text(
                  'Qty',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                size: ColumnSize.S,
              ),
            ],
            rows: List.generate(
                getRankingDashboardToday().length,
                (index) => DataRow2(cells: [
                      DataCell(Row(
                        children: [
                          Container(
                            color: index == 0
                                ? Colors.amber
                                : index == 1
                                    ? Colors.black12
                                    : index == 2
                                        ? Colors.brown
                                        : Colors.white,
                            width: 4,
                            height: 20,
                            margin: EdgeInsets.only(right: defaultPadding / 2),
                          ),
                          Text('${index + 1}º'),
                        ],
                      )),
                      DataCell(Row(
                        mainAxisAlignment: Responsive.isMiniMobile(context)
                            ? MainAxisAlignment.center
                            : MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: secondaryBgColor,
                            backgroundImage: Image.network(
                                    getRankingDashboardToday()[index]
                                        .imgNetworkSrc)
                                .image,
                          ),
                          SizedBox(
                            width: defaultPadding / 2,
                          ),
                          if (!Responsive.isMiniMobile(context))
                            Flexible(
                              child: Text(
                                getRankingDashboardToday()[index]
                                    .deliverymanName,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                        ],
                      )),
                      DataCell(
                        Text(getRankingDashboardToday()[index]
                            .qtdDeliveries
                            .toString()),
                      ),
                    ])),
          ),
        )
      ],
    ));
  }
}
