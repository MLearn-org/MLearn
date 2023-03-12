import 'package:flutter/material.dart';
import 'package:m_learn/Dashboards/dashboard_one.dart';
import 'package:m_learn/login_page.dart';
import 'package:m_learn/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MLearn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
