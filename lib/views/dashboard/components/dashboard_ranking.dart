import 'package:data_table_2/data_table_2.dart';
import 'package:delybox/constants.dart';
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
                    ? 3
                    : 1,
            lmRatio: 20,
            horizontalMargin: defaultPadding,
            columns: [
              DataColumn2(
                label: Text('#'),
                size: ColumnSize.S,
              ),
              DataColumn2(
                label: Text('Motoca'),
                size: ColumnSize.L,
              ),
              DataColumn2(
                label: Text('Qtd'),
                size: ColumnSize.S,
              ),
            ],
            rows: [
              DataRow2(
                cells: [
                  DataCell(Text('1')),
                  DataCell(Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: secondaryBgColor,
                      ),
                      SizedBox(
                        width: defaultPadding / 2,
                      ),
                      Flexible(
                        child: Text(
                          'Jacinto Jato no Meu Boiga',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  )),
                  DataCell(
                    Text('20'),
                  ),
                ],
              ),
              DataRow2(
                cells: [
                  DataCell(Text('2')),
                  DataCell(Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: secondaryBgColor,
                      ),
                      SizedBox(
                        width: defaultPadding / 2,
                      ),
                      Flexible(
                        child: Text(
                          'Jacinto Jato no Meu Boiga',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  )),
                  DataCell(
                    Text('20'),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
