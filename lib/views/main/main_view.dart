import 'package:delybox/constants.dart';
import 'package:delybox/providers/auth_provider.dart';
import 'package:delybox/views/body_container/components/main_drawer.dart';
import 'package:delybox/views/dashboard/dashboard.view.dart';
import 'package:delybox/views/send_order/dispatch_order_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainView extends StatefulWidget {
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, authProvider, child) {
      return SafeArea(
        child: DefaultTabController(
          initialIndex: 1,
          length: 3,
          child: Scaffold(
            drawer: MainDrawer(),
            appBar: AppBar(
              toolbarHeight: 65,
              backgroundColor: primaryBgColor,
              elevation: 5,
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
            body: TabBarView(
              children: [DispatchOrderView(), Dashboard(), Dashboard()],
            ),
            bottomNavigationBar: Material(
              color: primaryBgColor,
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.send),
                  ),
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.view_list),
                  ),
                ],
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white30,
                indicatorColor: Colors.white,
              ),
            ),
          ),
        ),
      );
    });
  }
}
