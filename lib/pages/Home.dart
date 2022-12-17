import 'package:evahan/widgets/bottom_navigation.dart';
import 'package:evahan/widgets/journeydetails.dart';
import 'package:evahan/widgets/journeydetails2.dart';
import 'package:evahan/widgets/slidebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                height: 20,
              ),
              Center(
                child: Card(
                  child: Container(
                    height: 200,
                    width: 340,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Advertisement.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              slideButton(),
              SizedBox(height: 5),
              journeyDetails(),
              SizedBox(
                height: 20,
              ),
              journeyDetails2(),
              SizedBox(
                height: 20,
              ),
              journeyDetails(),
            ],
          ),
        ),
        bottomNavigationBar: bottom());
  }
}
