import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:portable_cash_register/addItem.dart';
import 'package:portable_cash_register/allCategories.dart';
import 'package:portable_cash_register/editItem.dart';

import 'package:portable_cash_register/deleteItem.dart';
import 'package:portable_cash_register/mainScreen.dart';
import 'package:portable_cash_register/searchItem.dart';

class inventoryMenu extends StatelessWidget {
  inventoryMenu({Key? key}) : super(key: key);

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
                          padding: const EdgeInsets.only(left: 10, top: 20),
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
                                  builder: (context) => MainScreen()));
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 57, top: 37),
                        child: Image.asset(
                          'assets/images/inventory.png',
                          height: 65,
                          width: 65,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5, top: 115),
                        child: Text('    Inventory Management',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            )),
                      ),
                    ]),
                  ]),
                  Column(children: [
                    Stack(children: [
                      Container(
                        margin: EdgeInsets.only(left: 35, top: 230),
                        width: 145,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 206, 233, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 52, top: 245),
                        child: TextButton(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 4),
                              child: Icon(
                                Icons.add_circle,
                                color: Color.fromARGB(255, 9, 5, 87),
                                size: 55.0,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => addItem()));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 206, 233, 255),
                              ),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 65, top: 328),
                        child: Text('Add item',
                            style: TextStyle(
                              color: Color.fromARGB(255, 9, 5, 87),
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 75, top: 355),
                        child: Text('Add an item \n  to the cart',
                            style: TextStyle(
                              color: Color.fromARGB(255, 9, 5, 87),
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            )),
                      ),
                    ]),
                    Stack(children: [
                      Container(
                        margin: EdgeInsets.only(left: 35, top: 20),
                        width: 145,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 206, 233, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 52, top: 35),
                        child: TextButton(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 4),
                              child: Icon(
                                MdiIcons.squareEditOutline,
                                color: Color.fromARGB(255, 9, 5, 87),
                                size: 55.0,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => editItem()));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 206, 233, 255),
                              ),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 65, top: 118),
                        child: Text('Edit item',
                            style: TextStyle(
                              color: Color.fromARGB(255, 9, 5, 87),
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 57, top: 145),
                        child: Text('   Edit the list of\n items in the cart',
                            style: TextStyle(
                              color: Color.fromARGB(255, 9, 5, 87),
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            )),
                      ),
                    ]),
                  ]),
                  Column(children: [
                    Stack(children: [
                      Container(
                        margin: EdgeInsets.only(left: 210, top: 90),
                        width: 145,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 206, 233, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 225, top: 105),
                        child: TextButton(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 4),
                              child: Icon(
                                MdiIcons.minusCircle,
                                color: Color.fromARGB(255, 9, 5, 87),
                                size: 55.0,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => deleteItem()));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 206, 233, 255),
                              ),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 221, top: 188),
                        child: Text('Delete items',
                            style: TextStyle(
                              color: Color.fromARGB(255, 9, 5, 87),
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 240, top: 215),
                        child: Text('Delete an item \n  from the cart',
                            style: TextStyle(
                              color: Color.fromARGB(255, 9, 5, 87),
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            )),
                      ),
                    ]),
                    Stack(children: [
                      Container(
                        margin: EdgeInsets.only(left: 210, top: 20),
                        width: 145,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 206, 233, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 225, top: 35),
                        child: TextButton(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 4),
                              child: Icon(
                                Icons.remove_red_eye,
                                color: Color.fromARGB(255, 9, 5, 87),
                                size: 55.0,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => allCategories()));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 206, 233, 255),
                              ),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 230, top: 118),
                        child: Text('View items',
                            style: TextStyle(
                              color: Color.fromARGB(255, 9, 5, 87),
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 232, top: 145),
                        child: Text('  View the list of\n items in the cart',
                            style: TextStyle(
                              color: Color.fromARGB(255, 9, 5, 87),
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            )),
                      ),
                    ]),
                    Stack(children: [
                      Container(
                        margin: EdgeInsets.only(left: 210, top: 20),
                        width: 145,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 206, 233, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 225, top: 35),
                        child: TextButton(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 4),
                              child: Icon(
                                Icons.search,
                                color: Color.fromARGB(255, 9, 5, 87),
                                size: 55.0,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => searchItem()));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 206, 233, 255),
                              ),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 219, top: 118),
                        child: Text('Search items',
                            style: TextStyle(
                              color: Color.fromARGB(255, 9, 5, 87),
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 229, top: 145),
                        child: Text(' Search the list of\n  items in the cart',
                            style: TextStyle(
                              color: Color.fromARGB(255, 9, 5, 87),
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            )),
                      ),
                    ]),
                  ]),
                ])
              ]))
        ]));
  }
}
