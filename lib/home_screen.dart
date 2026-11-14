import 'package:flutter/material.dart';

import 'tab_page1.dart';
import 'tab_page2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: menu(),
        ),

        body: const TabBarView(children: [TabPage1(), TabPage2()]),
      ),
    );
  }

  Widget menu() {
    return Container(
      margin: const EdgeInsets.only(right: 25, left: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white.withValues(alpha: 0.9),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: const TabBar(
        labelPadding: EdgeInsets.all(5),
        labelColor: Color.fromARGB(255, 33, 46, 83),
        unselectedLabelColor: Colors.grey,
        dividerColor: Colors.transparent,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.only(bottom: 5.0),
        indicatorColor: Color.fromARGB(255, 206, 106, 107),
        tabs: [
          Tab(icon: Icon(Icons.home, size: 27)),
          Tab(icon: Icon(Icons.school, size: 27)),
        ],
      ),
    );
  }
}
