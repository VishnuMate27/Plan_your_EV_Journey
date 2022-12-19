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
              InkWell(
                onTap: (() {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      isDismissible: false,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                      builder: ((context) {
                        return Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.cyan),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50))),
                            height: 550,
                            child: Column(
                              children: [
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
                                                color: Color.fromARGB(
                                                    255, 97, 96, 96)),
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
                                                  255, 189, 179, 179)),
                                        ),
                                        child: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 70, top: 15),
                                            child: SizedBox(
                                              child: Text(
                                                "\t Nagpur",
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 97, 96, 96),
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
                                              color: const Color.fromARGB(
                                                  255, 189, 179, 179))),
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.only(left: 70, top: 15),
                                        child: SizedBox(
                                          child: Text(
                                            "1. Jaika Motors",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 97, 96, 96),
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
                                            padding: EdgeInsets.only(
                                                left: 70, top: 17),
                                            child: SizedBox(
                                              child: Text(
                                                "2. Radisson Blue",
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 97, 96, 96),
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
                                              color: const Color.fromARGB(
                                                  255, 189, 179, 179))),
                                      child: const Padding(
                                          padding: EdgeInsets.only(
                                              left: 70, top: 17),
                                          child: SizedBox(
                                            child: Text(
                                              " \t Hydrabad",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 97, 96, 96),
                                                fontSize: 25,
                                              ),
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(
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
                              ],
                            ));
                      }));
                }),
                child: InkWell(
                  onTap: (() {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        isDismissible: false,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        )),
                        builder: ((context) {
                          return Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.cyan),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50))),
                              height: 550,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    "Comfortable Journey",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 32, 118, 131)),
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
                                                  color: Color.fromARGB(
                                                      255, 97, 96, 96)),
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
                                                    255, 189, 179, 179)),
                                          ),
                                          child: const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 70, top: 15),
                                              child: SizedBox(
                                                child: Text(
                                                  "\t Nagpur",
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 97, 96, 96),
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
                                                color: const Color.fromARGB(
                                                    255, 189, 179, 179))),
                                        child: const Padding(
                                          padding: EdgeInsets.only(
                                              left: 70, top: 15),
                                          child: SizedBox(
                                            child: Text(
                                              "1. Jaika Motors",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 97, 96, 96),
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
                                              padding: EdgeInsets.only(
                                                  left: 70, top: 17),
                                              child: SizedBox(
                                                child: Text(
                                                  "2. Radisson Blue",
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 97, 96, 96),
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
                                                color: const Color.fromARGB(
                                                    255, 189, 179, 179))),
                                        child: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 70, top: 17),
                                            child: SizedBox(
                                              child: Text(
                                                " \t Hydrabad",
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 97, 96, 96),
                                                  fontSize: 25,
                                                ),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                          isScrollControlled: true,
                                          context: context,
                                          isDismissible: false,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(50),
                                            topRight: Radius.circular(50),
                                          )),
                                          builder: ((context) {
                                            return Container(
                                                width: 300,
                                                height: 550,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 23, 90, 100)),
                                                    borderRadius:
                                                        const BorderRadius
                                                                .vertical(
                                                            top:
                                                                Radius.circular(
                                                                    50))),
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      "Booking Summary",
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255,
                                                              32,
                                                              118,
                                                              131)),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      children: const [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 50),
                                                            child: SizedBox(
                                                              child: Text(
                                                                "You will be charged only booking amount. The\n charging amount will be taken after charging.",
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            97,
                                                                            96,
                                                                            96),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ))
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 40,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const SizedBox(
                                                          width: 50,
                                                        ),
                                                        const Text(
                                                            "1.Jaika  Motors  booking cost"),
                                                        const SizedBox(
                                                          width: 73,
                                                        ),
                                                        const Text("Rs.30"),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 15,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const SizedBox(
                                                          width: 50,
                                                        ),
                                                        const Text(
                                                            "2.Raddison Blue booking "),
                                                        const SizedBox(
                                                          width: 100,
                                                        ),
                                                        const Text("Rs.90"),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 15,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const SizedBox(
                                                          width: 50,
                                                        ),
                                                        const Text(
                                                            "Total Cost  "),
                                                        const SizedBox(
                                                          width: 187,
                                                        ),
                                                        const Text("Rs.120"),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 70,
                                                    ),
                                                    Container(
                                                        decoration: BoxDecoration(
                                                            color: Colors
                                                                .cyan[600],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        width: 300,
                                                        height: 50,
                                                        child: const Center(
                                                          child: Text(
                                                            "Pay Now",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        )),
                                                  ],
                                                ));
                                          }));
                                    },
                                    child: Container(
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
                                  ),
                                ],
                              ));
                        }));
                  }),
                  child: Container(
                      width: 300,
                      height: 50,
                      color: Colors.cyan[600],
                      child: const Center(
                        child: Text(
                          "Plan Your Journey",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottom());
  }
}
