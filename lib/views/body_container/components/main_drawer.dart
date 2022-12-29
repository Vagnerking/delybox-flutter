// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'dart:ui';

import 'package:delybox/constants.dart';
import 'package:delybox/providers/auth_provider.dart';
import 'package:delybox/providers/company_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer2<AuthProvider, CompanyProvider>(
        builder: (context, authProvider, companyProvider, child) {
      return Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      opacity: 0.8,
                      image: AssetImage(companyProvider.getImageSrc),
                      fit: BoxFit.cover)),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        color: Colors.grey.withOpacity(0.1),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 3),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: CircleAvatar(
                                backgroundImage:
                                    Image.asset(companyProvider.getImageSrc)
                                        .image,
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            Text(
                              companyProvider.getCompanyName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: const Text(
                      'Dashboard',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    onTap: () {
                      print('clicked on dashboard item menu');
                      Navigator.of(context).pushNamed('/dashboard');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.view_list),
                    title: const Text(
                      'Orders',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    onTap: () {
                      print('clicked on orders item menu');
                      Navigator.of(context).pushNamed('/orders');
                    },
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 0.1,
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: const Text(
                'Companies',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                print('clicked on companies item menu');
                authProvider.loginStatus = LoginStatus.companies;
                Navigator.of(context).pushNamed('/companies');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text(
                'Logout',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                print('clicked on logout item menu');
                authProvider.loginStatus = LoginStatus.none;
                Navigator.of(context).pushNamed('/');
              },
            ),
            SizedBox(
              height: defaultPadding,
            )
          ],
        ),
      );
    });
  }
}
