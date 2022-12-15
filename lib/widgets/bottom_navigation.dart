import 'package:flutter/material.dart';

Widget bottom() {
  return Container(
    child: Column(
      children: [
        Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.charging_station_sharp),
                  label: "Charging Stations"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.route_sharp), label: "Route"),
            ],
          ),
        )
      ],
    ),
  );
}
