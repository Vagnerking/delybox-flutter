// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'company.dart';

class ListOfCompanies extends StatefulWidget {
  @override
  State<ListOfCompanies> createState() => _ListOfCompaniesState();
}

class _ListOfCompaniesState extends State<ListOfCompanies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding),
      padding: EdgeInsets.all(defaultPadding / 2),
      constraints: BoxConstraints(maxHeight: 370, maxWidth: 740),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Company(
                logoImgSrc: 'assets/images/geiselburger.png',
                companyName: 'Geisel Burger',
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
