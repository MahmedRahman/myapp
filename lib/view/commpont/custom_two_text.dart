import 'package:flutter/material.dart';

Widget customTwoText({
  required String title1,
  required String title2,
  required void Function()? onTap1,
  required void Function()? onTap2,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        onTap: onTap1,
        child: Text(
          "Didn’t have any account?",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      SizedBox(
        width: 8,
      ),
      InkWell(
        onTap: onTap2,
        child: Text(
          "Sign Up here",
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff0ACF83),
          ),
        ),
      ),
    ],
  );
}
