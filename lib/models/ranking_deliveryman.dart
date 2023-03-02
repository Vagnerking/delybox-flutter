// ignore_for_file: prefer_const_constructors

import 'dart:ui';

class RankingDeliveryManModel {
  int posRanking, qtdDeliveries;
  String deliverymanName, imgNetworkSrc;

  RankingDeliveryManModel(this.posRanking, this.qtdDeliveries,
      this.deliverymanName, this.imgNetworkSrc);
}

List<RankingDeliveryManModel> getRankingDashboardToday() {
  List<RankingDeliveryManModel> columnData = <RankingDeliveryManModel>[
    RankingDeliveryManModel(1, 23, 'Vagner Araújo', 'https://i.ibb.co/k59Z21b/vagner.jpg'),
    RankingDeliveryManModel(2, 19, 'Rafael Gomes', 'https://i.ibb.co/M6Fjdcm/rafael.jpg'),
    RankingDeliveryManModel(3, 15, 'Leandro Munez', 'https://i.ibb.co/vdX1wXb/leandro.jpg'),
    RankingDeliveryManModel(4, 14, 'Victor Araújo', 'https://i.ibb.co/4WqWJ3k/victor.jpg'),
    RankingDeliveryManModel(5, 11, 'Amanda Chupetinha','https://i.ibb.co/LNdkxvw/amanda.jpg'),
  ];

  return columnData;
}
