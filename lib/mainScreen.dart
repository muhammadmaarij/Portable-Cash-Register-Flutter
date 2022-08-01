import 'package:flutter/material.dart';
import 'package:portable_cash_register/inventoryMenu.dart';
import 'firebaseAuthLogin.dart';
import 'package:portable_cash_register/loginscreen.dart';
import 'package:portable_cash_register/signupscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 206, 233, 255),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 62, left: 0),
            child: Stack(
              children: [
                Image.asset('assets/images/blue2.png'),
                Stack(children: [
                  Container(
                    margin: EdgeInsets.only(left: 14, top: 20),
                    width: 365,
                    height: 660,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 29),
                      child: Icon(
                        Icons.arrow_back,
                        color: Color.fromARGB(255, 9, 5, 87),
                        size: 32.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FirebaseLogin()));
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 300, top: 0),
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      'assets/images/profile.png',
                      height: 100,
                      width: 100,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                  Row(
                    children: [
                      Stack(children: [
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 80),
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 9, 5, 87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 74, top: 97),
                          child: ElevatedButton(
                              child: Image.asset(
                                'assets/images/inventory.png',
                                height: 45,
                                width: 45,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => inventoryMenu()));
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 9, 5, 87)),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 75, top: 155),
                          child: Text('    Inventory \nManagement',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              )),
                        ),
                      ]),
                      Stack(children: [
                        Container(
                          margin: EdgeInsets.only(left: 35, top: 80),
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 9, 5, 87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 58, top: 97),
                          child: ElevatedButton(
                              child: Image.asset(
                                'assets/images/cashbook.png',
                                height: 55,
                                width: 55,
                              ),
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 9, 5, 87)),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 70, top: 165),
                          child: Text('Cashbook',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              )),
                        ),
                      ]),
                    ],
                  ),
                  Row(
                    children: [
                      Stack(children: [
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 230),
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 9, 5, 87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 74, top: 247),
                          child: ElevatedButton(
                              child: Image.asset(
                                'assets/images/sale.png',
                                height: 50,
                                width: 50,
                              ),
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 9, 5, 87)),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 88, top: 305),
                          child: Text('    Sale \nAnalytics',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              )),
                        ),
                      ]),
                      Stack(children: [
                        Container(
                          margin: EdgeInsets.only(left: 35, top: 230),
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 9, 5, 87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 64, top: 247),
                          child: ElevatedButton(
                              child: Image.asset(
                                'assets/images/smart.png',
                                height: 55,
                                width: 55,
                              ),
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 9, 5, 87)),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 70, top: 315),
                          child: Text('    Smart\nAssistant',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              )),
                        ),
                      ]),
                    ],
                  ),
                  Row(
                    children: [
                      Stack(children: [
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 380),
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 9, 5, 87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 74, top: 397),
                          child: ElevatedButton(
                              child: Image.asset(
                                'assets/images/client.png',
                                height: 45,
                                width: 45,
                              ),
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 9, 5, 87)),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 75, top: 455),
                          child: Text('      Client \nManagement',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              )),
                        ),
                      ]),
                      Stack(children: [
                        Container(
                          margin: EdgeInsets.only(left: 35, top: 380),
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 9, 5, 87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 56, top: 397),
                          child: ElevatedButton(
                              child: Image.asset(
                                'assets/images/invoice.png',
                                height: 55,
                                width: 55,
                              ),
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 9, 5, 87)),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 63, top: 465),
                          child: Text('     Invoice\nManagement',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              )),
                        ),
                      ]),
                    ],
                  ),
                  Stack(children: [
                    Container(
                      margin: EdgeInsets.only(left: 133, top: 530),
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 9, 5, 87),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 157, top: 547),
                      child: ElevatedButton(
                          child: Image.asset(
                            'assets/images/settings.png',
                            height: 55,
                            width: 55,
                          ),
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 9, 5, 87)),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 160, top: 615),
                      child: Text('Configuration',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          )),
                    ),
                  ]),
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
