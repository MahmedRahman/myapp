import 'package:flutter/material.dart';
import 'package:myapp/view/commpont/custom_button.dart';
import 'package:myapp/view/commpont/custom_textform.dart';
import 'package:myapp/view/commpont/custom_title.dart';
import 'package:myapp/view/commpont/custom_two_text.dart';

class LoginView extends StatelessWidget {
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
            // color: Colors.red,
            child: Column(
              children: [
                customTitle(
                  "SignUp",
                  "It's modular and designed",
                ),
                SizedBox(
                  height: 240,
                ),
                customTextForm(
                  "Email",
                  Icons.email,
                ),
                SizedBox(
                  height: 20,
                ),
                customTextForm(
                  "Password",
                  Icons.password,
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "DMSans",
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 32,
                ),
                customButton(
                  onTap: () {},
                  title: "Sign In",
                ),
                SizedBox(
                  height: 24,
                ),
                customTwoText(
                  title1: "Didn’t have any account?",
                  title2: "Sign Up here",
                  onTap1: () {},
                  onTap2: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
