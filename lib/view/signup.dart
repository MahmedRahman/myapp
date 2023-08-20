import 'package:flutter/material.dart';
import 'package:myapp/utiles/form_validator.dart';
import 'package:myapp/view/commpont/custom_button.dart';
import 'package:myapp/view/commpont/custom_textform.dart';
import 'package:myapp/view/commpont/custom_title.dart';
import 'package:myapp/view/commpont/custom_two_text.dart';
import 'package:myapp/view/login.dart';

import '../utiles/firebase_auth_serives.dart';

class SignUpView extends StatelessWidget {
  final _validator = FormValidator();
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController repeatPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
                    "SignUpView",
                    "It's modular and designed",
                  ),
                  SizedBox(
                    height: 240,
                  ),
                  customTextForm(
                    "Email",
                    Icons.email,
                    controller: email,
                    validator: _validator.validateEmail,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  customTextForm(
                    "Password",
                    Icons.password,
                    controller: pass,
                    validator: _validator.validatePassword,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  customTextForm(
                    "Repeat password",
                    Icons.password,
                    controller: repeatPass,
                    validator: _validator.validatePassword,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  customButton(
                    onTap: () async {
                      //if (_formKey.currentState!.validate()) {
                      AuthService authService = AuthService();
                      final user = await authService.signUpWithEmailAndPassword(email.text, pass.text);
                      if (user != null) {
                        print('Successfully signed up!');
                      } else {
                        print('Failed to sign up.');
                      }
                      //}
                    },
                    title: "Sign Up",
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  customTwoText(
                    title1: "",
                    title2: "Login Up here",
                    onTap1: () {},
                    onTap2: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return LoginView();
                        },
                      ));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
