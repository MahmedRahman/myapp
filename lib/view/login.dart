import 'package:flutter/material.dart';
import 'package:myapp/utiles/app_%20shared_prefs.dart';
import 'package:myapp/utiles/app_dialog.dart';
import 'package:myapp/utiles/form_validator.dart';
import 'package:myapp/view/commpont/custom_button.dart';
import 'package:myapp/view/commpont/custom_textform.dart';
import 'package:myapp/view/commpont/custom_title.dart';
import 'package:myapp/view/commpont/custom_two_text.dart';
import 'package:myapp/view/signup.dart';

import '../utiles/firebase_auth_serives.dart';

class LoginView extends StatelessWidget {
  final _validator = FormValidator();
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    customTitle(
                      "LogIn",
                      "It's modular and designed",
                    ),
                    SizedBox(
                      height: 240,
                    ),
                    customTextForm(
                      "Email",
                      Icons.email,
                      validator: _validator.validateEmail,
                      controller: email,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    customTextForm(
                      "Password",
                      Icons.password,
                      validator: (value) {
                        return _validator.validatePassword(value);
                      },
                      controller: pass,
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
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          AuthService authService = AuthService();
                          final user = await authService.signInWithEmailAndPassword(
                            email.text.toString(),
                            pass.text.toString(),
                          );
                          if (user != null) {
                            print(user.email);
                            SharedPrefs().saveData("email", email.text.toString());
                            SharedPrefs().saveData("pass", pass.text.toString());

                            AppDialog.showPopup(
                              title: 'Success',
                              content: 'Successfully signed in!',
                            );
                          } else {
                            AppDialog.showPopup(
                              title: 'Failed',
                              content: 'Failed to sign in.',
                            );
                          }
                        }
                      },
                      title: "Sign In",
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    customTwoText(
                      title1: "Didn’t have any account?",
                      title2: "Sign Up here",
                      onTap1: () {},
                      onTap2: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return SignUpView();
                          },
                        ));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
