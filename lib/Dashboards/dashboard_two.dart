import 'package:flutter/material.dart';
import 'package:m_learn/Componants/custom_bottom_navigator.dart';

class DashboardTwo extends StatefulWidget {
  const DashboardTwo({super.key});

  @override
  State<DashboardTwo> createState() => _DashboardTwoState();
}

class _DashboardTwoState extends State<DashboardTwo> {
  final _contraller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _contraller,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  icon: Icon(Icons.search),
                  hintText: "Search",
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      //Navigate month back
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 25,
                    ),
                  ),
                  const Text(
                    //add text as month using variables and it should change when arrows click

                    "data",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      onTap: () {
                        //navigate month forward
                      },
                      child:
                          const Icon(Icons.arrow_forward_ios_rounded, size: 25))
                ],
              ),
              const SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                width: 271,
                height: 180,
                decoration: const BoxDecoration(color: Colors.lightBlue),
                child: const Text(
                  "PIE CHART",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                width: 271,
                height: 180,
                decoration: const BoxDecoration(color: Colors.lightBlue),
                child: const Text(
                  "BAR CHART",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                width: 271,
                height: 180,
                decoration: const BoxDecoration(color: Colors.lightBlue),
                child: const Text(
                  "LINE GRAPH",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
