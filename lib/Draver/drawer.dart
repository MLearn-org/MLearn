import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8),
      width: 200,
      height: size.height,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Icon(Icons.person_3_rounded),
          const SizedBox(height: 16),
          const Text("Name", style: TextStyle(fontSize: 16)),
          const SizedBox(height: 24),
          const TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: "Field 1"),
          ),
          const SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: "Field 2"),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () {
                  //navigater here
                },
              ),
              const Text("Update")
            ],
          ),
          const SizedBox(height: 300),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  //navigater here
                },
              ),
              const Text("Settings")
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.logout_outlined),
                onPressed: () {
                  //navigater here
                },
              ),
              const Text("Log Out")
            ],
          ),
        ],
      ),
    );
  }
}
