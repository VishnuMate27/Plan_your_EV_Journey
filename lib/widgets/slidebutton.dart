import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget slideButton() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      // journeynavigationf9g (48:14)
      margin: EdgeInsets.fromLTRB(3, 0, 1, 33),
      padding: EdgeInsets.fromLTRB(1, 0, 44, 0),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffffffff)),
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // autogroupcjrsLmc (SzTBcuokUeBuouzp5jCJrS)
            margin: EdgeInsets.fromLTRB(0, 0, 29, 0),
            width: 172,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff17adb3),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Center(
                child: Text(
                  'Upcoming Journeys',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.6625,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
          Center(
            // pastjourneys1Mx (45:51)
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
              child: Text(
                'Past  Journeys',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  height: 1.6625,
                  color: Color(0xff17adb3),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
