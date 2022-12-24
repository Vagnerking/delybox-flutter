// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'company.dart';

class ListOfCompanies extends StatefulWidget {
  const ListOfCompanies({
    super.key,
  });

  @override
  State<ListOfCompanies> createState() => _ListOfCompaniesState();
}

class _ListOfCompaniesState extends State<ListOfCompanies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
      padding: EdgeInsets.all(defaultPadding * 1),
      constraints: BoxConstraints(maxHeight: 340, maxWidth: 740),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Company(
                logoImgSrc: 'assets/images/geiselburger.png',
                companyName: 'Geisel Burguer',
                companyId: 0),
            Company(
                logoImgSrc: 'assets/images/pizza083.png',
                companyName: 'Pizza083',
                companyId: 1),
            Company(
                logoImgSrc: 'assets/images/dogao.jpg',
                companyName: 'Dogão',
                companyId: 2)
          ],
        ),
      ),
    );
  }
}
