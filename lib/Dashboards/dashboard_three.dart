import 'package:flutter/material.dart';

class DashboardThree extends StatefulWidget {
  const DashboardThree({super.key});

  @override
  State<DashboardThree> createState() => _DashboardThreeState();
}

class _DashboardThreeState extends State<DashboardThree> {
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
              Container(
                alignment: Alignment.topCenter,
                width: 271,
                height: 180,
                decoration: const BoxDecoration(color: Colors.lightBlue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Upcoming Tasks",
                      style: TextStyle(fontSize: 20),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.topCenter,
                width: 271,
                height: 180,
                decoration: const BoxDecoration(color: Colors.lightBlue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Delayed Tasks",
                      style: TextStyle(fontSize: 20),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
