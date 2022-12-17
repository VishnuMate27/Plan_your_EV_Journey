import 'package:evahan/pages/Home.dart';
import 'package:evahan/pages/plan_your_journey.dart';
import 'package:evahan/pages/plan_your_journey2.dart';
import 'package:evahan/pages/plan_your_journey3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/plan_journey_form2",
      routes: {
        "/home": (context) => HomePage(),
        "/plan_journey_form": (context) => PlanPage(),
        "/plan_journey_form2": (context) => PlanPage2(),
        "/plan_journey_form3": (context) => PlanPage3(),
      },
    );
  }
}
