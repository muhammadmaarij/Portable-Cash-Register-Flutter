// import 'package:flutter/material.dart';
// import 'package:portable_cash_register/signupscreen.dart';
// import 'package:portable_cash_register/welcomeScreen.dart';
// import 'mainScreen.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:community_material_icon/community_material_icon.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//
// class LoginScreen extends StatelessWidget {
//   LoginScreen({Key? key}) : super(key: key);
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Color.fromARGB(255, 206, 233, 255),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             margin: const EdgeInsets.only(top: 32, left: 0, right: 0),
//             child: Stack(
//               children: [
//                 Image.asset('assets/images/blue2.png'),
//                 InkWell(
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20, top: 20),
//                     child: Icon(
//                       Icons.arrow_back,
//                       color: Colors.white,
//                       size: 32.0,
//                     ),
//                   ),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => WelcomeScreen()));
//                   },
//                 ),
//                 Container(
//                     margin: EdgeInsets.only(left: 130, top: 45),
//                     child: Padding(
//                       padding: const EdgeInsets.all(18.0),
//                       child: const Text(
//                         "Sign In",
//                         style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 28,
//                             color: Colors.white),
//                       ),
//                     )),
//                 Container(
//                     margin: EdgeInsets.only(left: 105, top: 90),
//                     child: Padding(
//                       padding: const EdgeInsets.all(18.0),
//                       child: const Text(
//                         "Login to your account",
//                         style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 14,
//                             color: Colors.white),
//                       ),
//                     )),
//                 Stack(children: [
//                   Container(
//                     margin: EdgeInsets.only(left: 44, top: 160),
//                     width: 310,
//                     height: 500,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.all(Radius.circular(50))),
//                   ),
//                   Stack(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(left: 64, top: 190),
//                         width: 270,
//                         height: 55,
//                         decoration: BoxDecoration(
//                             color: Color.fromARGB(255, 206, 233, 255),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(25))),
//                         child: Row(children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 20, top: 4),
//                             child: Icon(
//                               FontAwesomeIcons.solidUser,
//                               color: Color.fromARGB(255, 9, 5, 87),
//                               size: 22.0,
//                             ),
//                           ),
//                           Container(
//                               margin: EdgeInsets.only(left: 20, top: 0),
//                               width: 3,
//                               height: 45,
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(25)))),
//                           Container(
//                             margin: EdgeInsets.only(left: 15),
//                             width: 180,
//                             height: 45,
//                             child: TextField(
//                                 decoration: InputDecoration(
//                               border: InputBorder.none,
//                               hintText: 'Username or E-mail',
//                               hintStyle: TextStyle(
//                                 color: Color.fromARGB(255, 9, 5, 87),
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 19,
//                               ),
//                             )),
//                           )
//                         ]),
//                       )
//                     ],
//                   ),
//                   Stack(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(left: 64, top: 260),
//                         width: 270,
//                         height: 55,
//                         decoration: BoxDecoration(
//                             color: Color.fromARGB(255, 206, 233, 255),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(25))),
//                         child: Row(children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 20, top: 4),
//                             child: Icon(
//                               CommunityMaterialIcons.key_variant,
//                               color: Color.fromARGB(255, 9, 5, 87),
//                               size: 22.0,
//                             ),
//                           ),
//                           Container(
//                               margin: EdgeInsets.only(left: 20, top: 0),
//                               width: 3,
//                               height: 45,
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(25)))),
//                           Container(
//                             margin: EdgeInsets.only(left: 52),
//                             width: 150,
//                             height: 45,
//                             child: TextField(
//                                 decoration: InputDecoration(
//                               border: InputBorder.none,
//                               hintText: 'Password',
//                               hintStyle: TextStyle(
//                                 color: Color.fromARGB(255, 9, 5, 87),
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 19,
//                               ),
//                             )),
//                           )
//                         ]),
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(left: 80, top: 327),
//                         width: 120,
//                         height: 50,
//                         child: Text(
//                           "Forget Password?",
//                           style: TextStyle(
//                             color: Color.fromARGB(255, 9, 5, 87),
//                             fontWeight: FontWeight.w600,
//                             fontSize: 12,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 17, top: 290),
//                         child: Icon(
//                           MdiIcons.checkboxMarked,
//                           color: Color.fromARGB(255, 9, 5, 87),
//                           size: 20.0,
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(left: 0, top: 327),
//                         width: 120,
//                         height: 50,
//                         child: Text(
//                           "Keep me signed in",
//                           style: TextStyle(
//                             color: Color.fromARGB(255, 9, 5, 87),
//                             fontWeight: FontWeight.w600,
//                             fontSize: 10,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 64, top: 375),
//                     width: 270,
//                     height: 50,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(55))),
//                     child: InkWell(
//                       child: ElevatedButton(
//                           child: Text('Login',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 24,
//                               )),
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => MainScreen()));
//                           },
//                           style: ButtonStyle(
//                               backgroundColor: MaterialStateProperty.all(
//                                   Color.fromARGB(255, 9, 5, 87)),
//                               shape: MaterialStateProperty.all<
//                                       RoundedRectangleBorder>(
//                                   RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(18.0),
//                               )))),
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => MainScreen()));
//                       },
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 62, top: 450),
//                     width: 300,
//                     height: 50,
//                     child: Text(
//                       "-----------------  or  -----------------",
//                       style: TextStyle(
//                         color: Color.fromARGB(255, 171, 171, 171),
//                         fontWeight: FontWeight.w600,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                   Stack(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(left: 64, top: 490),
//                         width: 270,
//                         height: 55,
//                         decoration: BoxDecoration(
//                             color: Color.fromARGB(255, 100, 133, 232),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(25))),
//                         child: Row(children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 20, top: 4),
//                             child: Icon(
//                               MdiIcons.facebook,
//                               color: Colors.white,
//                               size: 22.0,
//                             ),
//                           ),
//                           Container(
//                               margin: EdgeInsets.only(left: 20, top: 0),
//                               width: 3,
//                               height: 45,
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(25)))),
//                           InkWell(
//                             child: Container(
//                               margin: EdgeInsets.only(left: 17, top: 18),
//                               width: 170,
//                               height: 45,
//                               child: Text(
//                                 'LOGIN WITH FACEBOOK',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 15,
//                                 ),
//                               ),
//                             ),
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => MainScreen()));
//                             },
//                           )
//                         ]),
//                       )
//                     ],
//                   ),
//                   Stack(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(left: 64, top: 560),
//                         width: 270,
//                         height: 55,
//                         decoration: BoxDecoration(
//                             color: Color.fromARGB(255, 231, 81, 81),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(25))),
//                         child: Row(children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 20, top: 4),
//                             child: Icon(
//                               FontAwesomeIcons.google,
//                               color: Colors.white,
//                               size: 22.0,
//                             ),
//                           ),
//                           Container(
//                               margin: EdgeInsets.only(left: 20, top: 0),
//                               width: 3,
//                               height: 45,
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(25)))),
//                           InkWell(
//                             child: Container(
//                               margin: EdgeInsets.only(left: 25, top: 18),
//                               width: 170,
//                               height: 45,
//                               child: Text(
//                                 'LOGIN WITH GOOGLE',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 15,
//                                 ),
//                               ),
//                             ),
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => MainScreen()));
//                             },
//                           )
//                         ]),
//                       )
//                     ],
//                   ),
//                 ]),
//                 Row(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 65, top: 670),
//                       width: 191,
//                       height: 45,
//                       child: Text(
//                         'Don\'t have an Account?',
//                         style: TextStyle(
//                           color: Color.fromARGB(255, 9, 5, 87),
//                           fontWeight: FontWeight.w600,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(top: 670),
//                       width: 100,
//                       height: 45,
//                       child: InkWell(
//                         child: Text('Sign Up',
//                             style: TextStyle(
//                               color: Colors.deepPurple,
//                               fontWeight: FontWeight.w600,
//                               fontSize: 18,
//                             )),
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => SignUpScreen()));
//                         },
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'authsystem.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:portable_cash_register/signUpScreen.dart';
// import 'package:untitled3/signUpScreen.dart';
// import 'package:portable_cash_register/signUpScreen.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'firebaseAuthLogin.dart';
import 'mainScreen.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginScreens extends StatefulWidget {
  LoginScreens({Key? key}) : super(key: key);

  _LoginScreensState createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  static Future<User?> loginUsingEmailPassword(
      {required String Email,
      required String Password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: Email, password: Password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-Found") {
        print('No User Found for that Email');
      }
    }
    return user;
  }

  Widget build(BuildContext context) {
    TextEditingController _emailController = new TextEditingController();
    TextEditingController _passwordController = new TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 206, 233, 255),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 32, left: 0, right: 0),
              child: Stack(
                children: [
                  Image.asset('assets/images/blue2.png'),
                  Container(
                      margin: EdgeInsets.only(left: 130, top: 45),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 28,
                              color: Colors.white),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 105, top: 90),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: const Text(
                          "Login to your account",
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
                              margin: EdgeInsets.only(left: 15),
                              width: 180,
                              height: 45,
                              child: TextField(
                                  controller: _emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Username or E-mail',
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
                              margin: EdgeInsets.only(left: 52),
                              width: 150,
                              height: 45,
                              child: TextField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
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
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 80, top: 327),
                          width: 120,
                          height: 50,
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                              color: Color.fromARGB(255, 9, 5, 87),
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, top: 290),
                          child: Icon(
                            MdiIcons.checkboxMarked,
                            color: Color.fromARGB(255, 9, 5, 87),
                            size: 20.0,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 0, top: 327),
                          width: 120,
                          height: 50,
                          child: Text(
                            "Keep me signed in",
                            style: TextStyle(
                              color: Color.fromARGB(255, 9, 5, 87),
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 64, top: 375),
                      width: 270,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(55))),
                      child: InkWell(
                          child: ElevatedButton(
                              child: Text('Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                  )),
                              onPressed: () async {
                                User? user = await loginUsingEmailPassword(
                                    Email: _emailController.text,
                                    Password: _passwordController.text,
                                    context: context);
                                print(user);
                                if (user != null) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainScreen()));
                                }
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 9, 5, 87)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  )))),
                          onTap: () async {
                            User? user = await loginUsingEmailPassword(
                                Email: _emailController.text,
                                Password: _passwordController.text,
                                context: context);
                            print(user);
                            if (user != null) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainScreen()));
                            }
                            ;
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 62, top: 450),
                      width: 300,
                      height: 50,
                      child: Text(
                        "-----------------  or  -----------------",
                        style: TextStyle(
                          color: Color.fromARGB(255, 171, 171, 171),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 64, top: 490),
                          width: 270,
                          height: 55,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 100, 133, 232),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 4),
                              child: Icon(
                                MdiIcons.facebook,
                                color: Colors.white,
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
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(left: 17, top: 18),
                                width: 170,
                                height: 45,
                                child: Text(
                                  'LOGIN WITH FACEBOOK',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MainScreen()));
                              },
                            )
                          ]),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 64, top: 560),
                          width: 270,
                          height: 55,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 231, 81, 81),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 4),
                              child: Icon(
                                FontAwesomeIcons.google,
                                color: Colors.white,
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
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(left: 25, top: 18),
                                width: 170,
                                height: 45,
                                child: Text(
                                  'LOGIN WITH GOOGLE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MainScreen()));
                              },
                            )
                          ]),
                        )
                      ],
                    ),
                  ]),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 65, top: 670),
                        width: 191,
                        height: 45,
                        child: Text(
                          'Don\'t have an Account?',
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
                        height: 45,
                        child: InkWell(
                          child: Text('Sign Up',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              )),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpScreen()));
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
      ),
    );
  }
}
