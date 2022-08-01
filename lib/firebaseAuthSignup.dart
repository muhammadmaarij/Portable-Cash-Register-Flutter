import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portable_cash_register/signUpScreen.dart';
// import 'package:untitled3/signUpScreen.dart';
// import 'package:portable_cash_register/loginscreen.dart';
// import 'package:portable_cash_register/signUpScreen.dart';


// import 'login.dart';

class FirebaseSignup extends StatefulWidget {
  const FirebaseSignup({Key? key}) : super(key: key);

  @override
  State<FirebaseSignup> createState() => _FirebaseSignupState();
}

class _FirebaseSignupState extends State<FirebaseSignup> {
  Future<FirebaseApp> _initializeFirebase() async{
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(

        future: _initializeFirebase(),
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.done){
            return SignUpScreen();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),

    );
  }
}
