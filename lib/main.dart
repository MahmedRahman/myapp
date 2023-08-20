import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/utiles/app_dialog.dart';
import 'package:myapp/utiles/setup_app_dialog.dart';
import 'package:myapp/view/home.dart';
import 'package:myapp/view/login.dart';
import 'package:myapp/view/login_view.dart';
import 'package:myapp/view/registration_view.dart';
import 'package:myapp/view/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      home: SetupAppDialog(
        child: LoginPage(),
      ),
      theme: ThemeData(
        fontFamily: "DMSans",
      ),
    ),
  );
}

// class TestPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Stack(
//           clipBehavior: Clip.none,
//           children: [
//             Container(
//               width: 300,
//               height: 500,
//               color: Colors.red,
//             ),
//             Positioned(
//               bottom: -50,
//               left: -20,
//               child: Container(
//                 width: 100,
//                 height: 200,
//                 color: Colors.green,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


