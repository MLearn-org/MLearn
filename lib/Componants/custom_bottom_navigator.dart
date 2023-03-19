import 'package:flutter/material.dart';
import 'package:m_learn/Dashboards/dashboard_one.dart';

import '../Dashboards/dashboard_two.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 40,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Colors.black26),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  //navigate function here
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashboardOne(),
                      ));
                },
                child: const Icon(Icons.dashboard, size: 35)),
            InkWell(
                onTap: () {
                  //navigate function here
                },
                child: const Icon(Icons.calendar_month_outlined, size: 35)),
            InkWell(
                onTap: () {
                  //navigate function here
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashboardTwo(),
                      ));
                },
                child: const Icon(Icons.stacked_line_chart_sharp, size: 35)),
            InkWell(
                onTap: () {
                  //navigate function here
                },
                child: const Icon(Icons.person_pin, size: 35))
          ],
        ),
      ),
    );
  }
}
