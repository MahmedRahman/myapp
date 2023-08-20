import 'package:flutter/material.dart';
import 'package:myapp/utiles/firebase_auth_serives.dart';
import 'package:myapp/utiles/form_validator.dart';
import 'package:myapp/view/commpont/custom_textform.dart';

class RegistrationPage extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("RegistrationPage"),
      ),
      body: Center(
        child: Form(
          key: _key,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              customTextForm(
                "Enter your name",
                Icons.email,
                controller: email,
                validator: FormValidator().validateEmail,
              ),
              SizedBox(
                height: 20,
              ),
              customTextForm(
                "Password",
                Icons.password,
                controller: password,
                validator: FormValidator().validatePassword,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  AuthService().signUpWithEmailAndPassword(
                    email.text,
                    password.text,
                  );
                },
                child: Text(
                  "Registration",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
