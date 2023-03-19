import 'package:flutter/material.dart';
import 'package:m_learn/Dashboards/calander_page.dart';
import 'package:m_learn/Dashboards/dashboard_one.dart';
import 'package:m_learn/Dashboards/dashboard_three.dart';
import 'package:m_learn/Dashboards/dashboard_two.dart';
import 'package:m_learn/Draver/drawer.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  final _key = GlobalKey<ScaffoldState>();
  int _currentindex = 0;
  final List _screens = <Widget>[
    const DashboardOne(),
    const CalanderPage(),
    const DashboardTwo(),
    const DashboardThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MLearn"),
      ),
      drawer: const CustomDrawer(),
      key: _key,
      body: _screens.elementAt(_currentindex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: "Calendar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.stacked_line_chart_sharp), label: "Stacked"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: "profile"),
        ],
        onTap: (int index) {
          setState(() {
            _currentindex = index;
          });
        },
        currentIndex: _currentindex,
        selectedItemColor: Colors.amber,
        backgroundColor: Colors.grey,
      ),
    );
  }
}
