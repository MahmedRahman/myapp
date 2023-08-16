import 'package:flutter/material.dart';
import 'package:myapp/view/login.dart';

void main() {
  runApp(
    MaterialApp(
      home: LoginView(),
      theme: ThemeData(
        fontFamily: "DMSans",
      ),
    ),
  );
}
