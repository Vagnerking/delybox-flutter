import 'package:delybox/app_providers.dart';
import 'package:delybox/views/companies/companies.view.dart';
import 'package:delybox/views/login/login.view.dart';
import 'package:delybox/views/main/main.view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          '/': (context) => LoginView(),
          '/companies': (context) => CompaniesView(),
          '/dashboard': (context) => MainView(startPageIndex: 1),
          '/send_order': (context) => MainView(startPageIndex: 0),
          '/order_list': (context) => MainView(startPageIndex: 2),
        },
      ),
    );
  }
}
