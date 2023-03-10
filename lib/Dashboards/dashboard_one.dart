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
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 46),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              InkWell(
                onTap: () {},
                child: const Icon(Icons.menu, size: 35),
              ),
              Container(
                width: 214,
                height: 35,
                child: TextField(),
                decoration: const BoxDecoration(
                  color: Colors.amber,
                ),
              )
            ]),
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
      bottomNavigationBar: SizedBox(
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
      ),
    );
  }
}
