import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/utiles/app_%20shared_prefs.dart';
import 'package:myapp/utiles/app_dialog.dart';
import 'package:myapp/utiles/form_validator.dart';
import 'package:myapp/view/commpont/custom_button.dart';
import 'package:myapp/view/commpont/custom_textform.dart';
import 'package:myapp/view/commpont/custom_title.dart';
import 'package:myapp/view/commpont/custom_two_text.dart';
import 'package:myapp/view/login.dart';
import 'package:myapp/view/signup.dart';

import '../utiles/firebase_auth_serives.dart';

class SplashView extends StatefulWidget {
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "aseets/image/image_10.png",
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: customTitle(
                "Welcome",
                "It's modular and designed",
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
