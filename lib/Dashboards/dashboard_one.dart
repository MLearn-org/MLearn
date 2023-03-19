import 'package:flutter/material.dart';

class DashboardOne extends StatefulWidget {
  const DashboardOne({super.key});

  @override
  State<DashboardOne> createState() => _DashboardOneState();
}

class _DashboardOneState extends State<DashboardOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 46),
            Row(
              children: const [
                SizedBox(width: 100),
                Text(
                  "Date , Month , Year",
                  style: TextStyle(fontSize: 19),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Container(
              height: 274,
              width: 246,
              decoration: const BoxDecoration(color: Colors.black),
            ),
            const SizedBox(height: 39),
            Container(
              height: 274,
              width: 246,
              decoration: const BoxDecoration(color: Colors.amber),
            )
          ],
        ),
      ),
    );
  }
}
