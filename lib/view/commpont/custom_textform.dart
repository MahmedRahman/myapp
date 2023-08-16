import 'package:flutter/material.dart';

Widget customTextForm(
  String label,
  IconData? icon,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 25,
    ),
    child: TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        label: Text("$label"),
        prefixIcon: Icon(icon),
        // errorBorder:
      ),
    ),
  );
}
