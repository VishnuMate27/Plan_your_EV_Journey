import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PlanPage2 extends StatelessWidget {
  const PlanPage2({super.key});

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
                    icon: const Icon(Icons.notifications_none),
                    color: Colors.grey,
                    iconSize: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person_outlined),
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
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Container(
                height: 550,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 23, 90, 100)),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(50))),
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Comfortable Journey",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 32, 118, 131)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Padding(
                          padding: EdgeInsets.only(left: 70),
                          child: SizedBox(
                            child: Text(
                              "Route has  17 Charging Stations available.\n You are suggested  2  of them.",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 97, 96, 96)),
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 80,
                          width: 390,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 189, 179, 179))),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 70, top: 15),
                              child: SizedBox(
                                child: Text(
                                  "\t Nagpur",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 97, 96, 96),
                                    fontSize: 25,
                                  ),
                                ),
                              )))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 390,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 189, 179, 179))),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 70, top: 15),
                          child: SizedBox(
                            child: Text(
                              "1. Jaika Motors",
                              style: TextStyle(
                                color: Color.fromARGB(255, 97, 96, 96),
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          height: 80,
                          width: 390,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 189, 179, 179))),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 70, top: 17),
                              child: SizedBox(
                                child: Text(
                                  "\t Hydrabad",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 97, 96, 96),
                                    fontSize: 25,
                                  ),
                                ),
                              )))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 390,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 189, 179, 179))),
                        child: const Padding(
                            padding: EdgeInsets.only(left: 70, top: 17),
                            child: SizedBox(
                              child: Text(
                                "2. Radisson Blue",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 97, 96, 96),
                                  fontSize: 25,
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                      width: 300,
                      height: 50,
                      color: Colors.cyan[600],
                      child: const Center(
                        child: Text(
                          "Book your slots",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ]),
              )
            ],
          ),
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
