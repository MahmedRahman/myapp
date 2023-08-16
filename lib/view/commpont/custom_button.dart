import 'package:flutter/material.dart';

Widget customButton({
  required String title,
  required void Function()? onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff0ACF83),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "$title",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );
}
