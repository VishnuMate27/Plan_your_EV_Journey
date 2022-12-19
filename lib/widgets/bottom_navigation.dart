import 'package:flutter/material.dart';

Widget bottom() {
  return Container(
      child: BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/routes.png")),
          label: "Routes"),
      BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/charging station.png")),
          label: "Charging Points"),
    ],
  ));
}
