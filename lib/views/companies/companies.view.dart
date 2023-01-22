// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, must_be_immutable
import 'package:delybox/constants.dart';
import 'package:delybox/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/companies_footer.dart';
import 'components/companies_list.dart';

class CompaniesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, authProvider, child) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 65,
            backgroundColor: primaryBgColor,
            elevation: 5,
            leading: IconButton(
              onPressed: () {
                print('clicked on logout');
                authProvider.loginStatus = LoginStatus.none;
                Navigator.of(context).pushNamed('/');
              },
              icon: Icon(Icons.logout),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Username'),
                    CircleAvatar(
                      radius: 30, // Image radius
                      backgroundImage:
                          Image.asset('assets/images/user.jpg').image,
                    ),
                  ],
                ),
              ),
            ],
          ),
          body: Container(
            height: double.infinity,
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: defaultPadding,
                      ),
                      Text(
                        'Companies List',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                                fontSize: 24,
                                color: defaultTextColor,
                                fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      ListOfCompanies(),
                      CompaniesFooter(),
                    ]),
              ),
            ),
          ),
        ),
      );
    });
  }
}
