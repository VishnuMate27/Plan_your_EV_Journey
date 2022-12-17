// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:evahan/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    bool checkboxState = false;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Stack(
              children: [
                // ignore: prefer_const_constructors
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.map_outlined,
                          color: Color.fromARGB(255, 71, 70, 70),
                        )),
                    Text(
                      "Nagpur",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 71, 70, 70)),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    GestureDetector(
                      onTap: () {}, // Image tapped
                      child: Image.asset(
                        'assets/images/chevron-down.png',
                        fit: BoxFit.contain, // Fixes border issues
                      ),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_none,
                        color: Color.fromARGB(255, 71, 70, 70),
                      ),
                      color: Colors.grey,
                      iconSize: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_outlined,
                        color: Color.fromARGB(255, 71, 70, 70),
                      ),
                      color: Colors.grey,
                      iconSize: 30,
                    )
                  ],
                ),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "PLAN YOUR JOURNEY",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.cyan[700],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          child: Text("Source*"),
                          width: 100,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                      label: Text("Enter Source"),
                      border: OutlineInputBorder(),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          child: Text("Destination*"),
                          width: 100,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                      label: Text("Enter Destination"),
                      border: OutlineInputBorder(),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          child: Text("Prefered no.of stops (optional)"),
                          width: 100,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Text("Enter number of stops"),
                          border: OutlineInputBorder(),
                        ))
                  ],
                ),
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Theme.of(context).primaryColor,
                      value: checkboxState,
                      onChanged: (value) {
                        setState(() {
                          checkboxState = !checkboxState;
                        });
                      }),
                  Text("Optimize my Journey "
                      "\n"
                      "(less time and charging cost)"),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.cyan[600],
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Plan my Journey",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
        ),
        bottomNavigationBar: bottom());
  }
}
