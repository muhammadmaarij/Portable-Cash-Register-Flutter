import 'package:flutter/material.dart';
import 'package:portable_cash_register/inventoryMenu.dart';
import 'mainScreen.dart';
import 'welcomeScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class addItem extends StatelessWidget {
  addItem({Key? key}) : super(key: key);

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
                            Icons.add_circle,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 65.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 63, top: 112),
                        child: Text('Add Item',
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
                            margin: EdgeInsets.only(left: 20, top: 200),
                            width: 300,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 9, 5, 87),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 65, top: 217),
                            child: Text(
                              'Enter Details of your item',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 17, top: 15),
                              width: 280,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 206, 233, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Container(
                                margin: EdgeInsets.only(left: 45),
                                width: 180,
                                height: 45,
                                child: TextField(
                                    decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter Name of Item',
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 118, 118, 129),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                  ),
                                )),
                              ))
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 17, top: 6),
                              width: 280,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 206, 233, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Container(
                                margin: EdgeInsets.only(left: 45),
                                width: 180,
                                height: 45,
                                child: TextField(
                                    decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter Code of Item',
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 118, 118, 129),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                  ),
                                )),
                              ))
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 17, top: 6),
                              width: 280,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 206, 233, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 45),
                                    width: 180,
                                    height: 45,
                                    child: TextField(
                                        decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Select Category',
                                      hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 118, 118, 129),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      ),
                                    )),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 0),
                                    child: Icon(
                                      MdiIcons.arrowDownDropCircleOutline,
                                      color: Color.fromARGB(255, 9, 5, 87),
                                      size: 30.0,
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 17, top: 6),
                              width: 280,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 206, 233, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Container(
                                margin: EdgeInsets.only(left: 45),
                                width: 180,
                                height: 45,
                                child: TextField(
                                    decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter Size',
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 118, 118, 129),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                  ),
                                )),
                              ))
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 17, top: 6),
                              width: 280,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 206, 233, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Container(
                                margin: EdgeInsets.only(left: 45),
                                width: 180,
                                height: 45,
                                child: TextField(
                                    decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter Price',
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 118, 118, 129),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                  ),
                                )),
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 100, top: 5),
                            child: Icon(
                              MdiIcons.minusCircle,
                              color: Color.fromARGB(255, 9, 5, 87),
                              size: 40.0,
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 22, top: 6),
                                  width: 80,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 206, 233, 255),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 28),
                                    width: 180,
                                    height: 45,
                                    child: TextField(
                                        decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: '0.0',
                                      hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 118, 118, 129),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      ),
                                    )),
                                  ))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 22, top: 4),
                            child: Icon(
                              Icons.add_circle,
                              color: Color.fromARGB(255, 9, 5, 87),
                              size: 40.0,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 17, top: 15),
                        width: 270,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(55))),
                        child: ElevatedButton(
                            child: Text('Submit',
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
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                )))),
                      ),
                    ],
                  )
                ])
              ]))
        ]));
  }
}
