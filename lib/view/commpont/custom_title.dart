import 'package:flutter/material.dart';

Widget customTitle(String title, String subtitle, {MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start}) {
  return Column(
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        height: 106,
      ),
      Text(
        "$title",
        style: TextStyle(
          fontFamily: "DMSans",
          color: Colors.white,
          fontSize: 52,
        ),
      ),
      Text(
        "$subtitle",
        style: TextStyle(
          fontFamily: "DMSans",
          color: Colors.white,
          fontSize: 20,
        ),
      )
    ],
  );
}
