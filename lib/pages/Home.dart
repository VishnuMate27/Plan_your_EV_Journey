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
                    icon: Icon(Icons.notifications_none),
                    color: Colors.grey,
                    iconSize: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_outlined),
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
            Container(
              width: 340,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Color.fromARGB(255, 90, 181, 196))),
            ),
            SizedBox(height: 30),
            Container(
              height: 200,
              width: 370,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/electric_car.png",
                      ),
                      fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(255, 103, 197, 211)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Nagpur ",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Hydrabad",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Most Comfortable",
                          style: TextStyle(
                              color: Color.fromARGB(255, 15, 159, 179)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: 370,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/electric_car.png",
                      ),
                      fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(255, 103, 197, 211)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Nagpur ",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Bhopal",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Comfortable",
                          style: TextStyle(
                              color: Color.fromARGB(255, 15, 159, 179)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.charging_station_sharp),
              label: "Charging Stations"),
          BottomNavigationBarItem(
              icon: Icon(Icons.route_sharp), label: "Route"),
        ],
      ),
    );
  }
}