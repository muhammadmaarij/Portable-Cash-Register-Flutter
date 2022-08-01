import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'Views/loginscreen.dart';
import 'loginscreen.dart';

class FirebaseLogin extends StatefulWidget {
  const FirebaseLogin({Key? key}) : super(key: key);

  @override
  State<FirebaseLogin> createState() => _FirebaseLoginState();
}

class _FirebaseLoginState extends State<FirebaseLogin> {
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
            return LoginScreens();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),

    );
  }
}

