// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:delybox/app_providers.dart';
import 'package:delybox/providers/auth_provider.dart';
import 'package:delybox/views/companies/companies_view.dart';
import 'package:delybox/views/dashboard/dashboard.dart';
import 'package:delybox/views/login/login_view.dart';
import 'package:delybox/views/main/main_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Delybox',
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: secondaryBgColor,
          textTheme: GoogleFonts.poppinsTextTheme(),
          canvasColor: secondaryBgColor,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MainView(page: LoginView()),
          '/companies': (context) => MainView(page: CompaniesView()),
          '/dashboard': (context) => MainView(page: Dashboard()),
        },
        // home: MainView(page: Dashboard()),
      ),
    );
  }
}
