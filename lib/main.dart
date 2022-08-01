// import 'package:flutter/material.dart';
// import 'package:portable_cash_register/allCategories.dart';
// import 'package:portable_cash_register/grocery.dart';
// import 'package:portable_cash_register/signUpScreen.dart';
// import 'package:portable_cash_register/welcomeScreen.dart';
// import 'package:flutter/cupertino.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Portable Cash Register",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         fontFamily: '',
//       ),
//       // home: WelcomeScreen(),
//       home: WelcomeScreen(),
//     );
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:portable_cash_register/welcomeScreen.dart';
import 'firebaseAuthLogin.dart';
import 'loginscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Portable Cash Register",
      theme: ThemeData(
        fontFamily: 'GoogleFonts.(fontStyle: FontStyle.italic)',
      ),
      initialRoute: 'welcome_screen',
      routes: {
        // 'welcome_screen': (context) => SignUpScreen(),
        'welcome_screen': (context) => WelcomeScreen(),
        'registration_screen': (context) => FirebaseLogin(),
        'login_screen': (context) => LoginScreens(),
      },
    );
  }
}
