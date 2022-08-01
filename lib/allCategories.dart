import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:portable_cash_register/grocery.dart';
import '../Models/categories.dart';
import 'inventoryMenu.dart';

class allCategories extends StatelessWidget {
  allCategories({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(255, 206, 233, 255),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              margin: const EdgeInsets.only(top: 62, left: 0),
              child: Stack(children: [
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
                  Row(children: [
                    Stack(children: [
                      Container(
                        margin: EdgeInsets.only(left: 0, top: 0),
                        child: Image.asset(
                          'assets/images/ellipse.png',
                          height: 220,
                          width: 220,
                        ),
                      ),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => inventoryMenu()));
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 37, top: 37),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 4),
                          child: Icon(
                            Icons.category,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 65.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50, top: 112),
                        child: Text('All Categories',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            )),
                      ),
                    ]),
                  ]),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 56, top: 200),
                            width: 280,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 9, 5, 87),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 137, top: 217),
                            child: Text(
                              'Categories',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          InkWell(
                            child: Container(
                                margin: EdgeInsets.only(left: 50, top: 15),
                                width: 250,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 206, 233, 255),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 14),
                                      child: Image.asset(
                                        'assets/images/grocery.png',
                                        height: 50,
                                        width: 50,
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 55, top: 15),
                                      width: 80,
                                      height: 45,
                                      child: Text(
                                        "Grocery",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 9, 5, 87),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Grocery()));
                            },
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 50, top: 85),
                              width: 250,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 206, 233, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 14),
                                    child: Image.asset(
                                      'assets/images/toys.png',
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 70, top: 15),
                                    width: 80,
                                    height: 45,
                                    child: Text(
                                      "Toys",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 9, 5, 87),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 50, top: 155),
                              width: 250,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 206, 233, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 14),
                                    child: Image.asset(
                                      'assets/images/electronics.png',
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 45, top: 15),
                                    width: 120,
                                    height: 45,
                                    child: Text(
                                      "Electronics",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 9, 5, 87),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 50, top: 225),
                              width: 250,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 206, 233, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 14),
                                    child: Image.asset(
                                      'assets/images/garments.png',
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 50, top: 15),
                                    width: 110,
                                    height: 45,
                                    child: Text(
                                      "Garments",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 9, 5, 87),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 50, top: 295),
                              width: 250,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 206, 233, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 14),
                                    child: Image.asset(
                                      'assets/images/furniture.png',
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 52, top: 15),
                                    width: 120,
                                    height: 45,
                                    child: Text(
                                      "Furniture",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 9, 5, 87),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ],
                  )
                ])
              ]))
        ]));
  }
}
