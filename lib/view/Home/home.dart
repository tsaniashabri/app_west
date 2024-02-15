import 'package:aplikasi_west/view/Request/myRequest_view.dart';
import 'package:aplikasi_west/view/Home/home_view.dart';
import 'package:aplikasi_west/view/Profile/profile2_view.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final int indexInitial;
  Home(this.indexInitial);
  @override
  _HomeState createState() => _HomeState(indexInitial);
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int indexInitial;
  _HomeState(this.indexInitial);
  TabController controller;
  @override
  void initState() {
    controller = new TabController(
      length: 4,
      vsync: this,
      initialIndex: indexInitial,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new TabBarView(
        controller: controller,
        children: [
          HomeView(),
          MyRequest(), //ganti dengan my request view
          Container(), //ganti dengan help view
          Profile2(),
        ],
      ),
      bottomNavigationBar: Material(
        child: TabBar(
          controller: controller,
          tabs: [
            Tab(
              icon: Icon(Icons.home_outlined, size: 20),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.content_paste_outlined, size: 20),
              text: 'My Request',
            ),
            Tab(
              icon: Icon(Icons.help_outline, size: 20),
              text: 'Help',
            ),
            Tab(
              icon: Icon(Icons.account_circle_outlined, size: 20),
              text: 'Profile',
            ),
          ],
          labelStyle: TextStyle(
            fontFamily: "Roboto",
            fontSize: 12,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: "Roboto",
            fontSize: 12,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
          ),
          labelColor: Colors.white,
          unselectedLabelColor: Color(0xFF767676),
          labelPadding: EdgeInsets.zero,
          indicator: BoxDecoration(color: Color(0xff767676)),
          automaticIndicatorColorAdjustment: true,
        ),
      ),
    );
  }
}
