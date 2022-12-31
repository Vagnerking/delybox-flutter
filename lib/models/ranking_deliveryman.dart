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
    RankingDeliveryManModel(1, 23, 'Vagner Araújo',
        'https://pps.whatsapp.net/v/t61.24694-24/162460927_620935199475577_5251021377683614990_n.jpg?ccb=11-4&oh=01_AdQK7L_ytkhJubBe7QV8s4b_ovLyws2nBwP0pJfDQubguQ&oe=63BC3516'),
    RankingDeliveryManModel(2, 19, 'Rafael Gomes',
        'https://pps.whatsapp.net/v/t61.24694-24/310068105_518766039607124_3589690799800063751_n.jpg?ccb=11-4&oh=01_AdQHAgRu2xXV5TSxGXwJSF7RIwyf1DBBnTOmA58cgaF_QQ&oe=63BC4698'),
    RankingDeliveryManModel(3, 15, 'Leandro Munez',
        'https://pps.whatsapp.net/v/t61.24694-24/257062434_672703617497919_5042461565579679884_n.jpg?ccb=11-4&oh=01_AdRmvV-SGq8E5U8POG6WN_uIjCl26d-kU7nAcgkpEx8YBw&oe=63BC4600'),
    RankingDeliveryManModel(4, 14, 'Victor Araújo',
        'https://pps.whatsapp.net/v/t61.24694-24/317035805_1138835743458063_8965979828703879616_n.jpg?ccb=11-4&oh=01_AdSSJ7oNkO1mB-pt3nL6hSq6HBpVg5jLbUA89POAzU0h9g&oe=63BC57AA'),
    RankingDeliveryManModel(5, 11, 'Amanda Chupetinha',
        'https://pps.whatsapp.net/v/t61.24694-24/315330901_539161034772188_8337606318761422622_n.jpg?ccb=11-4&oh=01_AdTgIojAFpW75VIRwyYzlYQkM0P4tQvUtDz6FnCQPnRDYw&oe=63BC46EC'),
  ];

  return columnData;
}
