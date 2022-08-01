import 'package:flutter/material.dart';
import 'firebaseAuthLogin.dart';
import 'loginscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 206, 233, 255),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 13),
            child: Stack(
              children: [
                Image.asset('assets/images/bluehome.png'),
                Container(
                    margin: EdgeInsets.only(left: 30, top: 50),
                    width: 310,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: const Text(
                        "Portable Cash Register",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 26,
                            color: Color.fromARGB(255, 9, 5, 87)),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 140, left: 80),
                  child: Image.asset('assets/images/logo.png'),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 18, left: 18),
            child: const Text(
              "Manage your daily\nBusiness Tasks",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 28,
                  color: Color.fromARGB(255, 9, 5, 87)),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 18, top: 10),
            child: const Text(
              "Solution to all your Financial issues and\nmanage them with more Ease.",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color.fromARGB(255, 9, 5, 87)),
            ),
          ),
          Row(
            children: [
              Stack(children: [
                Container(
                    margin: EdgeInsets.only(left: 30, top: 40),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40)))),
                Container(
                    padding: const EdgeInsets.only(left: 40, top: 60),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                          color: Color.fromARGB(255, 9, 5, 87)),
                    ))
              ]),
              Container(
                margin: EdgeInsets.only(left: 90, top: 40),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 9, 5, 87),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: InkWell(
                  child: IconButton(
                    iconSize: 50,
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FirebaseLogin()));
                    },
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirebaseLogin()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
