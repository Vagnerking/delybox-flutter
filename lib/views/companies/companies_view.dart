// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, must_be_immutable
import 'package:delybox/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../constants.dart';
import 'components/companies_footer.dart';
import 'components/companies_list.dart';

class CompaniesView extends StatelessWidget {
  AuthController authController = AuthController.instance;

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (authController.loginStatus != LoginStatus.companies) {
        Navigator.of(context).pushNamed('/');
      }
    });

    return Container(
      height: double.infinity,
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: defaultPadding,
            ),
            Text(
              'Companies List',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
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
    );
  }
}
