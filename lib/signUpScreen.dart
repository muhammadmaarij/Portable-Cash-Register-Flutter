import 'package:flutter/material.dart';
import 'package:portable_cash_register/mainScreen.dart';
import 'package:portable_cash_register/loginscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 206, 233, 255),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 32, left: 0),
            child: Stack(
              children: [
                Image.asset('assets/images/blue2.png'),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 32.0,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
                Container(
                    margin: EdgeInsets.only(left: 130, top: 45),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                            color: Colors.white),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(left: 115, top: 90),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: const Text(
                        "Create your account",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    )),
                Stack(children: [
                  Container(
                    margin: EdgeInsets.only(left: 44, top: 160),
                    width: 310,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 64, top: 190),
                        width: 270,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 206, 233, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 4),
                            child: Icon(
                              FontAwesomeIcons.solidUser,
                              color: Color.fromARGB(255, 9, 5, 87),
                              size: 22.0,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 20, top: 0),
                              width: 3,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)))),
                          Container(
                            margin: EdgeInsets.only(left: 55),
                            width: 140,
                            height: 45,
                            child: TextField(
                                decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Full Name',
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 9, 5, 87),
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                              ),
                            )),
                          )
                        ]),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 64, top: 260),
                        width: 270,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 206, 233, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 4),
                            child: Icon(
                              Icons.email,
                              color: Color.fromARGB(255, 9, 5, 87),
                              size: 22.0,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 20, top: 0),
                              width: 3,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)))),
                          Container(
                            margin: EdgeInsets.only(left: 40),
                            width: 150,
                            height: 45,
                            child: TextField(
                                decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email Address',
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 9, 5, 87),
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                              ),
                            )),
                          )
                        ]),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 64, top: 330),
                        width: 270,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 206, 233, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 4),
                            child: Icon(
                              Icons.local_phone,
                              color: Color.fromARGB(255, 9, 5, 87),
                              size: 22.0,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 20, top: 0),
                              width: 3,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)))),
                          Container(
                            margin: EdgeInsets.only(left: 32),
                            width: 150,
                            height: 45,
                            child: TextField(
                                decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Phone Number',
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 9, 5, 87),
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                              ),
                            )),
                          )
                        ]),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 64, top: 400),
                        width: 270,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 206, 233, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 4),
                            child: Icon(
                              CommunityMaterialIcons.key_variant,
                              color: Color.fromARGB(255, 9, 5, 87),
                              size: 22.0,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 20, top: 0),
                              width: 3,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)))),
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            width: 150,
                            height: 45,
                            child: TextField(
                                decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Create Password',
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 9, 5, 87),
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                              ),
                            )),
                          )
                        ]),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 64, top: 470),
                        width: 270,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 206, 233, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 4),
                            child: Icon(
                              CommunityMaterialIcons.key_variant,
                              color: Color.fromARGB(255, 9, 5, 87),
                              size: 22.0,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 20, top: 0),
                              width: 3,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)))),
                          Container(
                            margin: EdgeInsets.only(left: 22),
                            width: 180,
                            height: 45,
                            child: TextField(
                                decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 9, 5, 87),
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                              ),
                            )),
                          )
                        ]),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 64, top: 575),
                    width: 270,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(55))),
                    child: ElevatedButton(
                        child: Text('Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()));
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 9, 5, 87)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )))),
                  ),
                ]),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 65, top: 670),
                      width: 214,
                      height: 35,
                      child: Text(
                        'Already have an Account?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 9, 5, 87),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 670),
                      width: 100,
                      height: 35,
                      child: InkWell(
                        child: Text('Sign In',
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            )),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
