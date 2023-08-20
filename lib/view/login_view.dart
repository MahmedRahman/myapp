import 'package:flutter/material.dart';
import 'package:myapp/utiles/app_dialog.dart';
import 'package:myapp/utiles/firebase_auth_serives.dart';
import 'package:myapp/utiles/form_validator.dart';
import 'package:myapp/view/commpont/custom_textform.dart';
import 'package:myapp/view/home.dart';

int selectIndex = 2;

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _key = GlobalKey<FormState>();

  final email = TextEditingController();

  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("MY App"),
      ),
      drawer: Drawer(),
      body: IndexedStack(
        index: selectIndex,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.green,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          print(index);
          setState(() {
            selectIndex = index;
          });
        },
        currentIndex: selectIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home3",
          ),
        ],
      ),
    );
  }
}
